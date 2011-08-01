class HomeController < ApplicationController
  def index
    @session = Session.new

    if @user
      if @user.role ==0
        redirect_to encoder_members_path
      elsif @user.role == 1
        redirect_to admin_members_path
      end
    end
  end
end
