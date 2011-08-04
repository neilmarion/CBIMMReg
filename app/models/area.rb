class Area < ActiveRecord::Base
  has_many :members
  has_many :schools
end
