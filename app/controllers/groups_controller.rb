class GroupsController < ApplicationController
  def index
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user
    @group.administrator = current_user
    if @group.name.empty?
      flash[:alert]
      render :new
    elsif @group.save!
        redirect_to groups_path
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    @event = Event.new
    @myevents = @group.events.organized_by(current_user)
    @organizedevents = @group.events.not_organized_by(current_user)
    @proposedevents = @group.events.proposed
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to groups_path
  end

  def destroy
    Group.destroy(params[:id])
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :photo)
  end
end
