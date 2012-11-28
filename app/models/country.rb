class Country < ActiveRecord::Base
  has_many :States
  has_many :Cities
  attr_accessible :name
end
