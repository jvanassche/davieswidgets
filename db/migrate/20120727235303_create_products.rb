class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :ProductName
      t.float :UnitPrice

      t.timestamps
    end
  end
end
