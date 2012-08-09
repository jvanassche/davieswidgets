class Product < ActiveRecord::Base
  attr_accessible :ProductName, :UnitPrice, :UnitCost, :Quantity
  validates :ProductName, :UnitPrice, :UnitCost, :Quantity, :presence => true
  validates :UnitPrice, :UnitCost, :numericality => true
  validates :Quantity, :numericality => {:only_integer => true}

  has_many :order_detail

  def change_quantity(quantityChange)
	this.Quantity = this.Quantity + quantityChange
  end
end
