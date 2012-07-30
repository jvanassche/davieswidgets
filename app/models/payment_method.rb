class PaymentMethod < ActiveRecord::Base
  attr_accessible :PaymentMethod
  has_one :payment
end
