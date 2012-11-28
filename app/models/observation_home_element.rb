class ObservationHomeElement < ActiveRecord::Base
  belongs_to :Observation
  belongs_to :HomeElement
  # attr_accessible :title, :body
end
