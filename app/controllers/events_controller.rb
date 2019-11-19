class EventsController < ApplicationController
  before_action :set_group, only: [:create, :edit,:update]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.group = @group

    if params[:commit] == "Propose"
      @event.state = "proposed"
      if @event.save
        redirect_to group_path(@group)
      else
        redirect_to group_path(@group), notice: 'The name cannot be empty'
      end
    elsif params[:commit] == "Organize"
      @event.state = "organized"
      @event.organizer = current_user
      if @event.save
        render :edit
      else
        redirect_to group_path(@group), notice: 'The name cannot be empty'
      end
    end
  end

  def edit
    # authorize @event
  end

  def update
    @event.update(event_params)
    redirect_to group_event_path(@group, @event)
  end

  def destroy
    @event.destroy
    redirect_to group_path(@event.group)
    # authorize @event
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def event_params
    params.require(:event).permit(:name, :state, :address, :photo)
  end
end
