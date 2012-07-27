class Order < ActiveRecord::Base
  attr_accessible :CustomerID, :EmployeeID, :OrderDate, :PurchaseOrderNumber, :ShipDate, :ShippingMethodID, :SalesTaxRate
  has_many :order_details
  has_many :payments
  belongs_to :customer
  belongs_to :employee
  belongs_to :shipping_method

end
