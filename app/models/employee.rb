class Employee < ActiveRecord::Base
  attr_accessible :FirstName, :LastName, :Title, :WorkPhone
end
