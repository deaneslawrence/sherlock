# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Template < ActiveRecord::Base
  has_many :HomeElementRelationships
  
  def full_tree
    pe_array = Array.new()
    parentless_elements = HomeElement.where("id NOT IN (" + HomeElementRelationship.select(:child_id).to_sql + ")")
    parentless_elements.each do |pe|
      pe_array << Array.new(1, pe)
    end
    add_children(pe_array)
  end
    
  def add_children(parent_elements)
    parent_elements.each do |pe|
      if pe.children != []
        pe.insert(-1, add_children(pe.children))
      end
    end
  end
  
end
