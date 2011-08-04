class Encoder::MembersController < ApplicationController
  def index
    @members = Member.find(:all, :conditions => "encoder_id = #{@user.id}") if @user
    @schools = School.find(:all)

    none_school = School.new
    none_school.name = "-- NONE --"
    none_school.id = -1
    @schools << none_school

    @areas = Area.find(:all)

    none_area = Area.new
    none_area.name = "-- NONE --"
    none_area.id = -1
    @areas << none_area

    @locales = Locale.find(:all)

    none_locales = Locale.new
    none_locales.name = "-- NONE --"
    none_locales.id = -1
    @locales << none_locales

    @circles = Circle.find(:all)
    @member = Member.new

    respond_to do |format|
      format.html
      format.js
    end
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

  def destroy
    Member.find(params[:id]).destroy
    redirect_to (encoder_members_path)
  end

  def filter_schools
      @schools = School.where(:area_id => params[:id])
      none = School.new
      none.name = "-- NONE --"
      none.id = -1
      @schools << none
      #@schools = School.find(:all, :conditions =>  "area_id = #{params[:id]}")
      #puts "hello"

      respond_to do |format|
        format.js
      end    
  end

end
