class Payment < ActiveRecord::Base
  attr_accessible :OrderID, :PaymentAmount, :PaymentDate, :PaymentMethodID, :Status
  has_many :payment_methods
  belongs_to :order

end
