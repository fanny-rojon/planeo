class InvitationsController < ApplicationController
  def register
    redirect_to new_user_registration_path(code: params[:code])
  end
end
