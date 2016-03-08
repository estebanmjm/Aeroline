class RemoveColumnDayFromSchedule < ActiveRecord::Migration
  def change
  	remove_column :schedules, :day
  end
end
