class Order < ActiveRecord::Base
  attr_accessible :CustomerID, :EmployeeID, :OrderDate, :PurchaseOrderNumber, :ShipDate, :ShippingMethodID, :SalesTaxRate
  has_many :order_details
  has_many :payments
  belongs_to :customer, :foreign_key => 'CustomerID'
  belongs_to :employee, :foreign_key => 'EmployeeID'
  belongs_to :shipping_method, :foreign_key => 'ShippingMethodID'
  validates_associated :customer, :employee
  validates :OrderDate, :SalesTaxRate, :presence => true
  validates :SalesTaxRate, :numericality => true
  validate :customer_id_exists
        def customer_id_exists
                if Customer.find_by_id(self.CustomerID).nil?
                        errors.add(:base, "Invalid Customer Specified.")
                end
        end
  validate :employee_id_exists
        def employee_id_exists
                if Employee.find_by_id(self.EmployeeID).nil?
                        errors.add(:base, "Invalid Employee Specified")
                end
        end
  validate :shipping_id_exists
        def shipping_id_exists
                if ShippingMethod.find_by_id(self.ShippingMethodID).nil? && self.ShippingMethodID != nil
                        errors.add(:base, "Invalid Order Number")
                end
        end

   def order_total
	total = 0
	OrderDetail.where("OrderID = ?", self.id).each do |i|
		total += i.FinalPrice
   	end
	return total
   end
   def order_total_with_tax
	total = self.order_total + (self.order_total * (self.SalesTaxRate / 100))
	return total
  end

  def payment_total
	payment_total = 0
	Payment.where("OrderID = ?", self.id).each do |i|
		payment_total += i.PaymentAmount
	end
	return payment_total
  end

  def amount_owed
      return self.order_total_with_tax - self.payment_total
  end

 
end
