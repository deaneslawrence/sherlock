class CreateAddressWithPostalCodes < ActiveRecord::Migration
  def change
    create_table :address_with_postal_codes do |t|

      t.timestamps
    end
  end
end
