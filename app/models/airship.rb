class Airship < ActiveRecord::Base
	has_many :schedules
	has_many :routes, :through => :schedules
end
