class PaymentMethod < ActiveRecord::Base
  attr_accessible :PaymentMethod
  belongs_to :payment
end
