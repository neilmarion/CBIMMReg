class HomeController < ApplicationController
  def index
    @session = Session.new
  end

end
