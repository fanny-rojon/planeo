class EventsController < ApplicationController
  before_action :set_group, only: [:create]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :get_action_params, only: [:edit, :create]

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @marker = { lat: @event.latitude, lng: @event.longitude }
    @vote = Vote.new
  end

  def create
    @event = Event.new(event_params)
    @event.group = @group
    if @event.time != nil
      timehash = @event.time.gsub('}', "").split(",")
      hour = timehash[3].split("=>")[1]
      minute = timehash[4].split("=>")[1]
      time = hour + ':' + minute
    else
      time = "21:00"
    end
    @event.time = time
    @marker = { lat: 40.398471, lng: -3.686408 }
    if params[:commit] == "Propose"
      @event.state = "proposed"
      @event.organizer = current_user
      if @event.save
        redirect_to group_path(@group)
      else
        redirect_to group_path(@group), notice: 'The name cannot be empty'
      end
    elsif params[:commit] == "Organize"
      @event.state = "organized"
      @event.organizer = current_user
      if @event.save
        @event.event_dates.build
        render :edit
      else
        redirect_to group_path(@group), notice: 'The name cannot be empty'
      end
    end
  end

  def edit
    @event.latitude != nil ? @marker = { lat: @event.latitude, lng: @event.longitude } : @marker = { lat: 40.398471, lng: -3.686408 }
  end

  def update
    @event.state = "organized" if @event.state == "proposed"
    @event.organizer = current_user
    params[:address] = @event.address if params[:address] == nil
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to group_path(@event.group)
    # authorize @event
  end

  private

  def get_action_params
    @action = params[:action]
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def event_params
    params.require(:event).permit(:name, :state, :address, :photo, :organizer, :time, :description, event_dates_attributes: [:date])
  end
end
