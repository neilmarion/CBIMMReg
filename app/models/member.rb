class Member < ActiveRecord::Base
  YEAR_LEVEL = {"1st" => 1, "2nd" => 2, "3rd" => 3, "4th" => 4, "5th" => 5}
  FILTER_BY = {"SCHOOL" => 1, "AREA" => 2, "LOCALE" => 3, "YEAR LEVEL" => 4, "--NONE--" => 5}
  SORT = {"FIRST NAME" => 1, "LAST NAME" => 2, "NONE" => 3}

  belongs_to :school
  belongs_to :locale
  belongs_to :circle
  belongs_to :encoder
  belongs_to :area
end
