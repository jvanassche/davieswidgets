class Order < ActiveRecord::Base
  attr_accessible :CustomerID, :EmployeeID, :OrderDate, :PurchaseOrderNumber, :ShipDate, :ShippingMethodID, :SalesTaxRate
end
