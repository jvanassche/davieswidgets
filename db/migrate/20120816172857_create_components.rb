class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :Name
      t.float :UnitCost
      t.integer :QuantityOnHand
      t.string :Supplier

      t.timestamps
    end
  end
end
