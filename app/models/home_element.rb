# == Schema Information
#
# Table name: home_elements
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HomeElement < ActiveRecord::Base
  has_many :ObservationHomeElements
  has_many :Observations, :through => :ObservationHomeElements
  attr_accessible :name

  has_one      :parent_child_relationship,
               :class_name            => "HomeElementRelationship",
               :foreign_key           => :child_id
  has_one      :parent,
               :through               => :parent_child_relationship,
               :source                => :parent

  has_many     :child_parent_relationships,
               :class_name            => "HomeElementRelationship",
               :foreign_key           => :parent_id
  has_many     :children,
               :through               => :child_parent_relationships,
               :source                => :child
end
