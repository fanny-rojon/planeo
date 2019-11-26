class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home
  include Pundit
  after_action :verify_authorized, except: :home

  def home
    @navbar_hidden = true
    @homepage = true
  end
end
