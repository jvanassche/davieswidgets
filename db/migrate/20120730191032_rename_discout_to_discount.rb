class RenameDiscoutToDiscount < ActiveRecord::Migration
	def change
		rename_column :order_details, :Discout, :Discount
	end

end
