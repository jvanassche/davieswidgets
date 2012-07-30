class Payment < ActiveRecord::Base
  attr_accessible :OrderID, :PaymentAmount, :PaymentDate, :PaymentMethodID, :Status
  belongs_to :payment_method, :foreign_key => 'PaymentMethodID'
  belongs_to :order, :foreign_key => 'OrderID'
  validates :OrderID, :PaymentAmount, :PaymentDate, :presence => true
  validates :PaymentAmount, :numericality => true
  validate :order_id_exists
	def order_id_exists
		if Order.find_by_id(self.OrderID).nil?
			errors.add(:base, "Invalid Order Specified")
		end
	end

  validate :payment_method_exists
	def payment_method_exists
		if PaymentMethod.find_by_id(self.PaymentMethodID).nil?
			errors.add(:base, "Invalid Payment Method specified.")
		end
	end
end
