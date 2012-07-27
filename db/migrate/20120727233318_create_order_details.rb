class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :OrderID
      t.integer :ProductID
      t.integer :Quantity
      t.float :UnitPrice
      t.float :Discout

      t.timestamps
    end
  end
end
