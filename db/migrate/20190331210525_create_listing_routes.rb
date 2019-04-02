class CreateListingRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :listing_routes do |t|
      t.integer :listing_id
      t.integer :route_id

      t.timestamps
    end
  end
end
