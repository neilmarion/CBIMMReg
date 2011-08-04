class School < ActiveRecord::Base
  has_many :members
  belongs_to :area
end
