# == Schema Information
#
# Table name: address_customers
#
#  id         :integer          not null, primary key
#  from_date  :date
#  to_date    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AddressCustomer < ActiveRecord::Base
  belongs_to :Address
  belongs_to :Customer
  attr_accessible :from_date, :to_date
end
