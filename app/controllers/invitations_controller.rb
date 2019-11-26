class InvitationsController < ApplicationController
  prepend_before_action :store_group_cookie

  def register
    group = Group.find_by(code: params[:code])

    if user_signed_in?
      current_user.groups |= Array(group)
      redirect_to group_path(group)
    end
  end

  def store_group_cookie
    cookies[:invite_group_code] = params[:code]
  end
end
