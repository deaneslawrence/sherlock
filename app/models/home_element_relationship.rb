# == Schema Information
#
# Table name: home_element_relationships
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  child_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HomeElementRelationship < ActiveRecord::Base
  belongs_to :parent, class_name: "HomeElement"
  belongs_to :child, class_name: "HomeElement"
end
