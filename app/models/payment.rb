class Payment < ActiveRecord::Base
  attr_accessible :OrderID, :PaymentAmount, :PaymentDate, :PaymentMethodID, :Status
  belongs_to :payment_method, :foreign_key => 'PaymentMethodID'
  belongs_to :order, :foreign_key => 'OrderID'

end
