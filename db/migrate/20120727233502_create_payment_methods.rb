class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :PaymentMethod

      t.timestamps
    end
  end
end
