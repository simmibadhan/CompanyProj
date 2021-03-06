class Employee < ActiveRecord::Base
	belongs_to :city
	
	has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"
  has_attached_file :photo, :styles => { :thumb=> "100x100>" },
                  :url  => "/assets/employees/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/employees/:id/:style/:basename.:extension"

  validates :name, presence: true, uniqueness: true
  validates :city_id, :manager_id, presence: true
  validate :checkwilling, :on => :create
 
 def checkwilling
    if (self.willing_to_relocate == true)
      errors.add(:willing_to_relocate, " - can't be checked. New joinee does not have the option for relocation")
    end
  end
end
