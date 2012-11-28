class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :type
      t.string :street1
      t.string :street2

      t.timestamps
    end
  end
end
