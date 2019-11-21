class InvitationsController < ApplicationController
  skip_before_action :authenticate_user!

  def register
    redirect_to new_user_registration_path(code: params[:code])
  end
end
