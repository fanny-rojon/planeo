class RegistrationsController < Devise::RegistrationsController
  def create
    super

    if @user.persisted? && cookies[:invite_group_code].present?
      group = Group.find_by(code: cookies[:invite_group_code])
      @user.groups |= Array(group)
    end
  end
end
