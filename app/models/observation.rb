class Observation < ActiveRecord::Base
  has_many :ObservationHomeElements
  has_many :HomeElements, :through => :ObservationHomeElements
  attr_accessible :name
end
