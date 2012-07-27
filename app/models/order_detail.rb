class OrderDetail < ActiveRecord::Base
  attr_accessible :Discout, :OrderID, :ProductID, :Quantity, :UnitPrice
end
