class Product < ActiveRecord::Base
  attr_accessible :ProductName, :UnitPrice
  validates :ProductName, :UnitPrice, :presence => true
  validates :UnitPrice, :numericality => true
  has_many :order_detail
end
