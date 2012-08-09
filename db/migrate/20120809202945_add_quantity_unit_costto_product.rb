class AddQuantityUnitCosttoProduct < ActiveRecord::Migration

	def change
		add_column :products, :UnitCost, :float
		add_column :products, :Quantity, :integer
	end
end
