# == Schema Information
#
# Table name: observation_home_elements
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  observation_id  :integer
#  home_element_id :integer
#

class ObservationHomeElement < ActiveRecord::Base
  belongs_to :Observation
  belongs_to :HomeElement
  # attr_accessible :title, :body
end
