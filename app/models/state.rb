# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class State < ActiveRecord::Base
  has_many :Cities
  belongs_to :Country
  attr_accessible :name
end
