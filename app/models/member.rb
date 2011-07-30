class Member < ActiveRecord::Base
  YEAR_LEVEL = {"First Year" => 1, "Second Year" => 2, "Third Year" => 3, "Senior Year" => 4}

  belongs_to :school
  belongs_to :locale
  belongs_to :circle
  belongs_to :encoder
end
