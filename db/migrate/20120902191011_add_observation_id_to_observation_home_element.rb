class AddObservationIdToObservationHomeElement < ActiveRecord::Migration
  def change
    add_column :observation_home_elements, :observation_id, :int
  end
end
