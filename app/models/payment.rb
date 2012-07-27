class Payment < ActiveRecord::Base
  attr_accessible :OrderID, :PaymentAmount, :PaymentDate, :PaymentMethodID, :Status
end
