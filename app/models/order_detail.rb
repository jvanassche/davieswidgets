class OrderDetail < ActiveRecord::Base
  attr_accessible :Discout, :OrderID, :ProductID, :Quantity, :UnitPrice
  belongs_to :order
  belongs_to :product
  def FinalPrice
	(self.Discout != nil ? (self.UnitPrice - (self.UnitPrice * (self.Discout / 100))) * self.Quantity : self.UnitPrice * self.Quantity)
  end
end
