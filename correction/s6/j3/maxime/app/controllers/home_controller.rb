class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:secret]
  
  def index
    @event = Event.all

  end

  def secret
  end
end
