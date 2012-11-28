class AddressCustomer < ActiveRecord::Base
  belongs_to :Address
  belongs_to :Customer
  attr_accessible :from_date, :to_date
end
