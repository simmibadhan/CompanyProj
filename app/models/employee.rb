class Employee < ActiveRecord::Base
	belongs_to :city
	#attr_accessor :isManager
	has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  #scope :managers, where(:isManager => true)

  #def isManager
  #	 return (self.subordinates.count > 0 )
  #end

end
