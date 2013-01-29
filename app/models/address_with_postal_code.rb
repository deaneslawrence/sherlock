# == Schema Information
#
# Table name: address_with_postal_codes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AddressWithPostalCode < ActiveRecord::Base
  belongs_to :PostalCode
  belongs_to :Address
  # attr_accessible :title, :body
end
