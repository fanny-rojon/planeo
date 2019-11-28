class UsersController < ApplicationController
  def show
    myvotes = Vote.all.select { |vote| vote.user == current_user }
    confirmedvotes = myvotes.select { |vote| vote.event_date.confirmed == true }
    @myevents = confirmedvotes.map { |vote| vote.event_date.event }.uniq
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to groups_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :photo)
  end
end
