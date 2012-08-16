class Product < ActiveRecord::Base
  attr_accessible :ProductName, :UnitPrice, :UnitCost, :Quantity
  validates :ProductName, :UnitPrice, :UnitCost, :Quantity, :presence => true
  validates :UnitPrice, :UnitCost, :numericality => true
  validates :Quantity, :numericality => {:only_integer => true}

  has_many :order_detail
  
  def change_quantity(quantityChange)
	self.Quantity = this.Quantity + quantityChange
  end
  
  def update_cost
     self.UnitCost = 0;
     @components = Component.where("ProductID = ?",this.id)
     @components.each do |component|
       self.UnitCost += component.UnitCost
     end
  end
end
