class Customer < ActiveRecord::Base
  has_many :AddressCustomers
  has_many :Addersses, :through => :AddressCustomers
  attr_accessible :company, :first, :last
end
