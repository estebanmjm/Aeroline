class RenameColumnHourFromSchedules < ActiveRecord::Migration
  def change
  	rename_column :schedules, :hour, :date
  end
end
