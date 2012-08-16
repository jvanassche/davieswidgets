class AddReorderQuantityToComponent < ActiveRecord::Migration
  def change
	add_column :components, :ReorderQuantity, :integer
  end
end
