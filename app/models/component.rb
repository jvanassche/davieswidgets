class Component < ActiveRecord::Base
  attr_accessible :Name, :QuantityOnHand, :Supplier, :UnitCost, :ReorderQuantity
  
  has_many :product

end
