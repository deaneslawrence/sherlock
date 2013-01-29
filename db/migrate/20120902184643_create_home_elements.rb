class CreateHomeElements < ActiveRecord::Migration
  def change
    create_table :home_elements do |t|
      t.string :name

      t.timestamps
    end
  end
end
