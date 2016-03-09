class Route < ActiveRecord::Base
	has_many :schedules
	has_many :airships, :through => :schedules
	has_and_belongs_to_many :cities

   
	
	validates :code, presence: true, uniqueness: true 
	validates :cost, presence: true, numericality: true 

	validate :origin_destiny

	def origin_destiny
		errors.add(:destiny, "El destino no puede ser igual al origen") if destiny == origin 
	end
end
