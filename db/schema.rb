# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120730191032) do

  create_table "customers", :force => true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "BillingAddress1"
    t.string   "BillingAddress2"
    t.string   "BillingCity"
    t.string   "BillingState"
    t.string   "BillingZip"
    t.string   "BillingPhone"
    t.string   "ShipAddress1"
    t.string   "ShipAddress2"
    t.string   "ShipCity"
    t.string   "ShipState"
    t.string   "ShipZip"
    t.string   "ShipPhone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Title"
    t.string   "WorkPhone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "order_details", :force => true do |t|
    t.integer  "OrderID"
    t.integer  "ProductID"
    t.integer  "Quantity"
    t.float    "UnitPrice"
    t.float    "Discount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "CustomerID"
    t.integer  "EmployeeID"
    t.date     "OrderDate"
    t.string   "PurchaseOrderNumber"
    t.date     "ShipDate"
    t.integer  "ShippingMethodID"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "SalesTaxRate"
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "PaymentMethod"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "OrderID"
    t.float    "PaymentAmount"
    t.date     "PaymentDate"
    t.string   "Status"
    t.integer  "PaymentMethodID"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "ProductName"
    t.float    "UnitPrice"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shipping_methods", :force => true do |t|
    t.string   "ShippingMethod"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
