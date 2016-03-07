class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :origin
      t.string :destiny
      t.integer :code
      t.float :cost

      t.timestamps null: false
    end
  end
end
