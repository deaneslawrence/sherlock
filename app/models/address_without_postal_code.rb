class AddressWithoutPostalCode < ActiveRecord::Base
  belongs_to :City
  belongs_to :Address
  # attr_accessible :title, :body
end
