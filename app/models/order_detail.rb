class OrderDetail < ActiveRecord::Base
  attr_accessible :Discount, :OrderID, :ProductID, :Quantity, :UnitPrice
  belongs_to :order, :foreign_key => 'OrderID'
  belongs_to :product, :foreign_key => 'ProductID'
  validates :Quantity, :UnitPrice, :OrderID, :ProductID, :presence => true
  validates :Quantity, :numericality => {:only_integer => true }
  validates :UnitPrice, :numericality => true 
  validates_associated :order, :product
  validate :order_id_exists
	def order_id_exists
		if Order.find_by_id(self.OrderID).nil?
			errors.add(:base, "Invalid Order Number")
		end
	end


  validate :product_id_exists
        def product_id_exists
                if Product.find_by_id(self.ProductID).nil?
                        errors.add(:base, "Invalid Product Specified")
                end
        end


  def FinalPrice
	(self.Discount != nil ? (self.UnitPrice - (self.UnitPrice * (self.Discount / 100))) * self.Quantity : self.UnitPrice * self.Quantity)
  end
end
