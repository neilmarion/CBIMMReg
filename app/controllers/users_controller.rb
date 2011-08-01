class UsersController < ApplicationController
  before_filter :ensure_login, :only => [:edit, :update, :destroy]
  before_filter :ensure_logout, :only => [:new, :create]

  def index
    @users = User.find(:all)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    puts "HELLO " + @user.first_name.to_s
  end

  def create
    secret = Secret.find(1).password
    @user = User.new(params[:user])

    if secret == params[:secret]
      if @user.save
        @session = @user.sessions.create
        session[:id] = @session.id
        flash[:notice] = "Welcome #{@user.email}, you are now registered"
        redirect_to root_path
      else
        render(:action => 'new')
      end
    else
      flash[:notice] = "You entered the wrong secret"
      render(:action => 'new')
    end
  end

  def update
    @user = User.find(@user)
    if @user.update_attributes(params[:user])
      flash[:notice] = "Your account has been updated"
      redirect_to root_path
    else
      render(:action => 'edit')
    end
  end

  def destroy
    User.destroy(@user)
    session[:id] = @user = nil
    flash[:notice] = "You are now unregistered"
    redirect_to root_path
  end
end
