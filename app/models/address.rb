# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  street1    :string(255)
#  street2    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ActiveRecord::Base
  has_many :AddressCustomers
  has_many :Customers, :through => :AddressCustomers 
  attr_accessible :street1, :street2, :type
end
