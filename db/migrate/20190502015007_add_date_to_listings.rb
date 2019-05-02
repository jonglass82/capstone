class AddDateToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :date, :string
  end
end
