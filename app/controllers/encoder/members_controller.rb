class Encoder::MembersController < ApplicationController
  def index
    @members = Member.find(:all, :conditions => "encoder_id = #{@user.id}") if @user
    @schools = School.find(:all)
    @areas = Area.find(:all)
    @locales = Locale.find(:all)
    @circles = Circle.find(:all)
    @member = Member.new
  end

  def show
  end

  def edit
  end

  def create
    @member = Member.new(params[:member])
    @member.school = School.create(:name => params[:new_school]) if params[:new_school] != "Type in school here if not available above"
    @member.locale = Locale.create(:name => params[:new_locale]) if params[:new_locale] != "Type in locale here if not available above"
    @member.area = Area.create(:name => params[:new_area]) if params[:new_area] != "Type in area here if not available above"

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
