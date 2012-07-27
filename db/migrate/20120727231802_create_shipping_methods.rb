class CreateShippingMethods < ActiveRecord::Migration
  def change
    create_table :shipping_methods do |t|
      t.string :ShippingMethod

      t.timestamps
    end
  end
end
