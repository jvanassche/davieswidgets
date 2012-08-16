class CreateSchematics < ActiveRecord::Migration
  def change
    create_table :schematics do |t|
      t.integer :ProductID
      t.integer :ComponentID

      t.timestamps
    end
  end
end
