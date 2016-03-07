class CreateAirships < ActiveRecord::Migration
  def change
    create_table :airships do |t|
      t.string :ship_code
      t.string :ship_type
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
