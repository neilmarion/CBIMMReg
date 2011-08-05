class Area < ActiveRecord::Base
  has_many :schools
  has_many :members
end
