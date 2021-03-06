class Airship < ActiveRecord::Base
	has_many :schedules
	has_many :routes, :through => :schedules

	validates :ship_code, presence: true, uniqueness: true 
	validates :ship_type, presence: true
	validates :capacity, presence: true, numericality: true
end

