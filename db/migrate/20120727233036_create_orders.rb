class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :CustomerID
      t.integer :EmployeeID
      t.date :OrderDate
      t.string :PurchaseOrderNumber
      t.date :ShipDate
      t.integer :ShippingMethodID
      t.float :SalesTaxRate

      t.timestamps
    end
  end
end
