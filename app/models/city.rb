# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class City < ActiveRecord::Base
  has_many :PostalCodes
  has_many :AddressWithoutPostalCodes
  belongs_to :Country
  belongs_to :State
  attr_accessible :name
end
