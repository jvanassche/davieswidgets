class Order < ActiveRecord::Base
  attr_accessible :CustomerID, :EmployeeID, :OrderDate, :PurchaseOrderNumber, :ShipDate, :ShippingMethodID, :SalesTaxRate
  has_many :order_details
  has_many :payments
  belongs_to :customer, :foreign_key => 'CustomerID'
  belongs_to :employee, :foreign_key => 'EmployeeID'
  belongs_to :shipping_method, :foreign_key => 'ShippingMethodID'
  validates_associated :customer, :employee
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



 
end
