class AddColumnRouteIdToSchedulesTable < ActiveRecord::Migration
  def change
  	add_column :schedules, :route_id, :integer
  end
end
