class Encoder::MembersController < ApplicationController
  def index
    @members = Member.find(:all, :conditions => "encoder_id = #{@user.id}") if @user
  end

  def show
  end

  def edit
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:notice] = "Added #{@member.first_name} #{@member.middle_name} #{@member.last_name}"
      redirect_to (encoder_members_path)
    else
      render(:action => 'new')
    end
  end

  def new
    @schools = School.find(:all)
    @areas = Area.find(:all)
    @locales = Locale.find(:all)
    @circles = Circle.find(:all)
    @member = Member.new
  end
end
