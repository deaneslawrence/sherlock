class AddHomeElementIdToObservationHomeElement < ActiveRecord::Migration
  def change
    add_column :observation_home_elements, :home_element_id, :int
  end
end
