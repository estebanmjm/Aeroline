class CreateCitiesRoutes < ActiveRecord::Migration
  def change
    create_table :cities_routes, id: false do |t|
    	t.integer :city_id, index: true
    	t.integer :route_id, index: true
    end
  end
end
