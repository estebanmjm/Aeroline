class AddColumnAirshipIdToSchedulesTable < ActiveRecord::Migration
  def change
  	add_column :schedules, :airship_id, :integer
  end
end
