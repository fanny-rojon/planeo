class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @group = Group.find(params[:group_id])
    @event.group = @group
    @event.organizer = current_user
    if @event.save!
      redirect_to group_event_path(@event)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :state, :address, :photo)
  end
end
