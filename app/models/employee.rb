class Employee < ActiveRecord::Base
  attr_accessible :FirstName, :LastName, :Title, :WorkPhone
  has_many :orders
  validates :FirstName, :LastName, :presence => true

  def FullName
	 "#{self.FirstName} #{self.LastName}"
  end
end
