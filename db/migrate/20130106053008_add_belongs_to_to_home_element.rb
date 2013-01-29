class AddBelongsToToHomeElement < ActiveRecord::Migration
  def change
    add_column :home_elements, :belongs_to, :string
  end
end
