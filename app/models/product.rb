class Product < ActiveRecord::Base
  attr_accessible :ProductName, :UnitPrice

  has_many :order_detail
end
