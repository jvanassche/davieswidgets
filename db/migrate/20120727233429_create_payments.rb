class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :OrderID
      t.float :PaymentAmount
      t.date :PaymentDate
      t.string :Status
      t.integer :PaymentMethodID

      t.timestamps
    end
  end
end
