class AddQuantityToSchematic < ActiveRecord::Migration
  def change
	add_column :schematics, :Quantity, :integer
  end
end
