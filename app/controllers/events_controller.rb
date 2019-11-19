class EventsController < ApplicationController
  before_action :set_group, only: [:create, :edit,:update]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @group = Group.find(params[:group_id])
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.group = @group
    @event.organizer = current_user
    @event.state = "proposed"
    if @event.save!
      redirect_to group_event_path(@group, @event)
    else
      render :new
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
    redirect_to group_path
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
