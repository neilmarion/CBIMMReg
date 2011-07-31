# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create(:email => "admin@admins.com", :password => "admins", :password_confirmation => "admins", :role => 1, :first_name => "admin", :middle_name => "admin", :last_name => "admin")
User.create(:email => "neilmarion", :password => "neilmarion", :password_confirmation => "neilmarion", :role => 0, :first_name => "Neil Marion", :middle_name => "Flores", :last_name => "dela Cruz")

#CREATING SCHOOLS


School.create(:name => "ZZZZZ  NONE  ZZZZZ")

1.upto(10) do
  School.create(:name => Faker::Name.name + " Memorial School")
end




#CREATING AREAS

1.upto(10) do
  Area.create(:name => Faker::Address.city, :location => Faker::Address.us_state)
end

#CREATING LOCALES

1.upto(10) do
  Locale.create(:name => Faker::Address.us_state)
end

#CREATING CIRCLES (KAPISANAN)

circles = ["Buklod", "Kadiwa", "Binhi"]

1.upto(3) do |x|
  Circle.create(:name => circles[x-1])
end
