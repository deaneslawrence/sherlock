class AddressWithPostalCode < ActiveRecord::Base
  belongs_to :PostalCode
  belongs_to :Address
  # attr_accessible :title, :body
end
