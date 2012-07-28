class Customer < ActiveRecord::Base
  attr_accessible :BillingAddress1, :BillingAddress2, :BillingCity, :BillingPhone, :BillingState, :BillingZip, :FirstName, :LastName, :ShipAddress1, :ShipAddress2, :ShipCity, :ShipPhone, :ShipState, :ShipZip
  has_many :orders

  def FullName
	"#{self.FirstName} #{self.LastName}"
  end
end
