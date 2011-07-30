class HomeController < ApplicationController
  def index
    @session = Session.new

    redirect_to encoder_members_path if @user
    
  end
end
