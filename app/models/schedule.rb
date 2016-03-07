class Schedule < ActiveRecord::Base
	belongs_to :airship
	belongs_to :route
end
