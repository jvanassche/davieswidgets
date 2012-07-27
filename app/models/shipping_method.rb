class ShippingMethod < ActiveRecord::Base
  attr_accessible :ShippingMethod
  has_many :orders

end
