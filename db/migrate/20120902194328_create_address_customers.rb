class CreateAddressCustomers < ActiveRecord::Migration
  def change
    create_table :address_customers do |t|
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
