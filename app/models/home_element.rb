class HomeElement < ActiveRecord::Base
  has_many :ObservationHomeElements
  has_many :HomeElements
  has_many :Observations, :through => :ObservationHomeElements
  attr_accessible :name
  
end
