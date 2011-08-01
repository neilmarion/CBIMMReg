class Admin::MembersController < ApplicationController
  def index
    @schools = School.find(:all)
    @areas = Area.find(:all)
    @locales = Locale.find(:all)
    
    @members = Member.find(:all).sort_by(&:last_name) if params[:area] == nil && params[:school] == nil && params[:locale] == nil
    @members = School.find(params[:school]).members.sort_by(&:last_name) if params[:school]
    @members = Area.find(params[:area]).members.sort_by(&:last_name) if params[:area]
    @members = Locale.find(params[:locale]).members.sort_by(&:last_name) if params[:locale]
    members = @members

  end

  def show
  end

  def new
  end

  def edit
  end

  def export
    members = Member.find(:all)
    csv_string = FasterCSV.generate do |csv|
      csv << ["LAST NAME", "FIRST NAME", "PAARALAN", "AREA NG PAARALAN", "COURSE / SECTION", "LOKAL", "PRK-GRP", "KAPISANAN", "CONTACT NO"]
      for member in members
        csv << [(member.last_name), member.first_name, member.school.name, member.area.name, member.course_section, member.locale.name, member.zone_group, member.circle.name, member.contact_number] 
      end
    end
    send_data csv_string, :type => 'text/csv; charset=UTF-8; header=present', :disposition => "attachment; filename=members.csv"
  end

end
