# == Schema Information
#
# Table name: observations
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Observation < ActiveRecord::Base
  has_many :ObservationHomeElements
  has_many :HomeElements, :through => :ObservationHomeElements
  attr_accessible :name
end
