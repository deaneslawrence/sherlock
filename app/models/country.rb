# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class Country < ActiveRecord::Base
  has_many :States
  has_many :Cities
  attr_accessible :name
end
