class PostalCode < ActiveRecord::Base
  has_many :AddressesWithPostalCodes
  belongs_to :City
  attr_accessible :name
end
