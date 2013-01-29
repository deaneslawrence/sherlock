class CreateObservationHomeElements < ActiveRecord::Migration
  def change
    create_table :observation_home_elements do |t|

      t.timestamps
    end
  end
end
