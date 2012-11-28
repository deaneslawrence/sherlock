class State < ActiveRecord::Base
  has_many :Cities
  belongs_to :Country
  attr_accessible :name
end
