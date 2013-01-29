# == Schema Information
#
# Table name: postal_codes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class PostalCode < ActiveRecord::Base
  has_many :AddressesWithPostalCodes
  belongs_to :City
  attr_accessible :name
end
