class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.text :name

      t.timestamps
    end
  end
end
