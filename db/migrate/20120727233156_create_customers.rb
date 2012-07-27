class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :FirstName
      t.string :LastName
      t.string :BillingAddress1
      t.string :BillingAddress2
      t.string :BillingCity
      t.string :BillingState
      t.string :BillingZip
      t.string :BillingPhone
      t.string :ShipAddress1
      t.string :ShipAddress2
      t.string :ShipCity
      t.string :ShipState
      t.string :ShipZip
      t.string :ShipPhone

      t.timestamps
    end
  end
end
