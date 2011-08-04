# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Secret.create(:password => "98273kjh")

all_areas = ["Pasay", "Makati", "Taguig", "Paranaque", "Las Pinas", "Muntinlupa"]
added_areas = ["MMN", "MMW", "MME", "MMC", "Cavite", "Rizal", "Laguna"]

pasay_schools = ["Arellano University", "Asian Institute for Maritime Studies (AIMS)", "Datamex Computer College Pasay", "Kalayaan National High School (KNHS)", "Manila Tytana College (formerly Manila Doctors College)", "Pamantasan ng Lungsod ng Pasay", "Pasay City North National High School (PNNHS)", "Pasay City East National High School (PENHS)", "Pasay City South National High School (PSNHS)", "Pasay City West National High School (PWNHS)", "Philippine State College of Aeronautics (PhilSCA)", "Southeastern College"]
makati_schools = ["ABE International Business College", "AMA Computer College", "Asia Pacific College", "Asian Institute of Management (AIM)", "Assumption College", "Bangkal National High School (BNHS)", "Benigno Aquino National High School (BANHS)", "Centro Escolar University Makati (CEU-Mak)", "Colegio de Sta. Rosa", "Colegio San Agustin", "De La Salle College of Saint Benilde (CSB)", "De La Salle University Manila (DLSU)", "Fort Bonifacio High School", "General Pio del Pilar National High School", "Makati High School", "Mapua Institute of Technology Makati Campus", "Pitogo High School (PHS)", "San Antonio National High School", "San Isidro National High School", "STI Makati", "University of Makati (UMak)"]
taguig_schools = ["AMA Computer Learning Center", "Athens Academy", "Bagumbayan National High School", "Fisher Valley College", "Gen. R. Papa Memorial High School", "Global City Innovative College", "Marichu R. Tinga High School (TNHS Annex)", "Noah Academy", "Polytechnic University of the Philippines Taguig (PUP-Taguig)", "Saint Francis of Assisi College System Taguig (SFACS Taguig)", "Signal Village National High School", "STI College Taguig", "Taguig City University (TCU)", "Taguig National High School", "Taguig Science High School", "Technological Education and Skills Development Authority Taguig (TESDA Taguig)", "Upper Bicutan National High School", "Technological University of the Philippines (TUP-Taguig)", "Tipas National High School", "Western Bicutan National High School"]
paranaque_schools = ["AMA Computer University", "Baclaran National High School", "Dr. Arcadio Santos National High School", "Escuela de San Dionisio", "Lycee DRegis Marie School", "Manresa School", "Masville National High School", "Montessori de Manila", "Moonwalk National High School", "Olivarez College", "Paranaque National High School Main (PNHS)", "Paranaque National High School Don Galo Annex (PNHS Don Galo)", "Paranaque National High School La Huerta Annex (PNHS La Huerta)", "Paranaque Science High School", "PATTS College of Aeronautics", "Ramon Pascual Institute (RPI)", "South Merville School", "St. Andrews School (STAS)", "St. Paul College of Paranaque", "STI College Paranaque", "Sun Valley National High School", "Universal Colleges of Paranaque", "UP South School"]
laspinas_schools = ["ABE International College of Business and Accountancy", "Augustinian Abbey School Inc.", "Bernardo College", "Blessed Trinity School", "Bloomfield Academy", "Britanny School of Las-Pinas", "CAA National High School Main (CAANHS Main)", "CAA National High School Annex (CAANHS Annex)", "Camella School", "Colegio de Sta. Monica", "Creative Middle School", "Datamex Institute of Computer Technology", "De La Salle Santiago Zobel", "Divine Light Academy (DLA)", "Don Carlo Cavina School", "Dr. Filemon C. Aguilar Memorial College (DFCAMC)", "Dr. Filemon C. Aguilar Information and Technology Training Institute (DFCAITTI)", "Elizabeth Seton School", "Golden Acres National High School (GANHS)", "Imus Computer College", "Las-Pinas College", "Las-Pinas East National High School (LPENHS)", "Las-Pinas East National High School Equitable Annex (LPENHS Equitable)", "Las-Pinas East National High School Talon Annex (LPENHS Talon)", "Las-Pinas National High School (LPNHS)", "Las-Pinas National High School Gatchalian Annex (LPNHS Gatchalian)", "Las-Pinas North National High School (LPNNHS)", "Las-Pinas Science High School (LPSHS)", "Merry Treasure School (MTS)", "O.B. Montessori Center Inc.", "Our Lady of Pilar Montessori Center", "Philippine Merchant Marine School (PMMS)", "Rizal Experimental Station and Pilot School of Cottage Industries Las-Pinas Campus (RESPSCI)", "Saint Francis of Assisi College System Las-Pinas (SFACS-LP)", "Southville International School and Colleges (SISC)", "Southwood Integrated School", "St. Marks Institute (SMI)", "STI Academy High School", "STI College Las-Pinas", "University of Perpetual Help System DALTA (UPHSD)", "Westfield Science Oriented School (WSOS)", "TS Cruz High School (TSCHS)"]
muntinlupa_schools = ["AMA Computer Learning Center", "Datamex Institute of Computer Technology", "Imus Computer College Alabang", "Lyceum of Alabang", "Muntinlupa Business High School", "Muntinlupa Institute of Technology", "Muntinlupa National High School (MNHS)", "Muntinlupa Science High School (MSHS)", "Pamantasan ng  Lungsod ng Muntinlupa (PLMun)", "Saint Bernadette College of Alabang", "San Beda College Alabang", "South Mansfield College", "STI College Alabang", "West Bay College", "Victoria"]

#all_schools = pasay_schools + makati_schools + taguig_schools + paranaque_schools + laspinas_schools + muntinlupa_schools
all_schools = [pasay_schools, makati_schools, taguig_schools, paranaque_schools, laspinas_schools, muntinlupa_schools]

pasay_locales = ["Malibay", "Pasay", "Proprietarios"]
makati_locales = ["Bel-Air", "Evangelista", "Guadalupe", "Jackson", "Makati (Palanan)", "Pembo", "Sacramento"]
taguig_pateros_locales = ["Bagumbayan", "Hagonoy", "Lower Bicutan", "Napindan", "Pateros", "Pinagsama", "Signal Village Zone 1", "Signal Village Zone 5", "Taguig", "Tipas", "Upper Bicutan", "Ususan"]
paranaque_locales = ["Betterliving", "Ibayo", "Paranaque (UP5)", "Severina 18", "UP1"]
laspinas_locales = ["Admiral", "Almanza", "CAA", "Golden Acres", "Las-Pinas (Manuyo)", "Madrigal", "Pamplona", "St. Joseph", "Talon"]
muntinlupa_locales = ["Alabang", "Camp Sampaguita", "Cupang", "Karunungan", "Muntinlupa", "New Bilibid Prison (NBP)", "Sucat", "Tunasan"]

all_locales = pasay_locales + makati_locales + taguig_pateros_locales + paranaque_locales + laspinas_locales + muntinlupa_locales 
#all_locales = [pasay_locales,makati_locales,taguig_pateros_locales,paranaque_locales,laspinas_locales,muntinlupa_locales]

User.create(:email => "admin@admins.com", :password => "admins", :password_confirmation => "admins", :role => 1, :first_name => "admin", :middle_name => "admin", :last_name => "admin")
User.create(:email => "neilmarion", :password => "neilmarion", :password_confirmation => "neilmarion", :role => 0, :first_name => "Neil Marion", :middle_name => "Flores", :last_name => "dela Cruz")

#CREATING SCHOOLS

#School.create(:name => "ZZZZZ  NONE  ZZZZZ")

z=2
all_schools.each do |x|
  x.each do |y|
    School.create(:name => y, :area_id => z)
    puts "creating " + y
  end
  z+=1
end

#CREATING AREAS

#Area.create(:name => "ZZZZZ  NONE  ZZZZZ")

all_areas.each do |x|
  Area.create(:name => x, :location => x)
end

added_areas.each do |x|
  Area.create(:name => x, :location => x)
end

#CREATING LOCALES

#Locale.create(:name => "ZZZZZ  NONE  ZZZZZ")

all_locales.each do |x|
  Locale.create(:name => x)
end

#CREATING CIRCLES (KAPISANAN)

circles = ["Buklod", "Kadiwa", "Binhi"]

1.upto(3) do |x|
  Circle.create(:name => circles[x-1])
end

#CREATING MEMBERS

1.upto(100) do
  Member.create(:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :school_id => rand(129)+2, :area_id => rand(4)+2, :year_level => rand(4)+1, :course_section => Faker::Name.last_name, :locale_id => rand(41)+2, :zone_group => "#{rand(5)}-#{rand(20)}", :circle_id => rand(2)+1, :contact_number => Faker::PhoneNumber.phone_number, :encoder_id => 2)
end


