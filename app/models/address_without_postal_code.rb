# == Schema Information
#
# Table name: address_without_postal_codes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AddressWithoutPostalCode < ActiveRecord::Base
  belongs_to :City
  belongs_to :Address
  # attr_accessible :title, :body
end
