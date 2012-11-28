class City < ActiveRecord::Base
  has_many :PostalCodes
  has_many :AddressWithoutPostalCodes
  belongs_to :Country
  belongs_to :State
  attr_accessible :name
end
