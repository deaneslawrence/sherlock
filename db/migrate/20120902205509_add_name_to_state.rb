class AddNameToState < ActiveRecord::Migration
  def change
    add_column :states, :name, :string
  end
end
