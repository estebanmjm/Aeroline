class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :day
      t.datetime :hour

      t.timestamps null: false
    end
  end
end
