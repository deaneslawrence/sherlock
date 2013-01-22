class Address < ActiveRecord::Base
  has_many :AddressCustomers
  has_many :Customers, :through => :AddressCustomers 
  attr_accessible :street1, :street2, :type
end
