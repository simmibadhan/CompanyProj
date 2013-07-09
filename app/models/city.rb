class City < ActiveRecord::Base
	has_many :employees
	validates :name, presence: true, uniqueness: true
end
