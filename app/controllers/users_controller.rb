class UsersController < ApplicationController
  def show
    @myevents = Event.organized_by(current_user)
  end

  def edit
  end

  def update
  end
end
