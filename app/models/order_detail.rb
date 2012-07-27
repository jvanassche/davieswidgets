class OrderDetail < ActiveRecord::Base
  attr_accessible :Discout, :OrderID, :ProductID, :Quantity, :UnitPrice
  belongs_to :order
  belongs_to :product

end
