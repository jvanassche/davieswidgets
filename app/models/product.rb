class Product < ActiveRecord::Base
  attr_accessible :ProductName, :UnitPrice, :UnitCost, :Quantity
  validates :ProductName, :UnitPrice, :UnitCost, :Quantity, :presence => true
  validates :UnitPrice, :UnitCost, :numericality => true
  validates :Quantity, :numericality => {:only_integer => true}

  has_many :order_detail
  
  def change_quantity(quantityChange)
	self.Quantity = self.Quantity + quantityChange
  end

  def get_component_list
    @product = Product.find(self.id)
    @schematics = Schematic.where("ProductID = ?",self.id)
    component_ids = Array.new
    @schematics.each do |schematic|
	component_ids << schematic.ComponentID
    end
    @components = Component.where(:id => component_ids)
    return @components
  end

  def get_component_count(componentID)

	@schematic = Schematic.where("ProductID = ? AND ComponentID = ?",self.id,componentID )
	return @schematic.first.Quantity
  end
        
  
  def update_cost
     self.UnitCost = 0;
     (self.id.nil? ? return : @components = self.get_component_list )
     @components.each do |component|
       self.UnitCost += component.UnitCost * self.get_component_count(component.id)
     end
  end
end
