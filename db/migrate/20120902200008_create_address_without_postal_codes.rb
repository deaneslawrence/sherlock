class CreateAddressWithoutPostalCodes < ActiveRecord::Migration
  def change
    create_table :address_without_postal_codes do |t|

      t.timestamps
    end
  end
end
