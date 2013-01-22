# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  first      :string(255)
#  last       :string(255)
#  company    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  email      :string(255)
#

class Customer < ActiveRecord::Base
  has_many :AddressCustomers
  has_many :Addersses, :through => :AddressCustomers
  attr_accessible :company, :first, :last, :email

  before_save { |customer| customer.email = email.downcase }
 
  validates :first, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  uniqueness: true
end
