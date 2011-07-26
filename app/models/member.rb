class Member < ActiveRecord::Base
  belongs_to :school
  belongs_to :locale
  belongs_to :circle
  belongs_to :encoder
end
