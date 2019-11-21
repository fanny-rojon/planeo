class RegistrationsController < Devise::RegistrationsController
  def create
    super

    if @user.persisted? && params[:code]
      group = Group.find_by(code: params[:code])
      @user.groups << group
    end
  end
end
