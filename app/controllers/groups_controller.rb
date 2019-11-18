class GroupsController < ApplicationController
  def index
    @user = current_user
    @groups = User.find(@user.id).groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user_ids = current_user.id
    if @group.save!
      redirect_to groups_path
    else
      render :new
    end
  end

  def show
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
