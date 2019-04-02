class CreateDateRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :date_ranges do |t|
      t.string :start_date
      t.string :end_date
      t.integer :listing_id

      t.timestamps
    end
  end
end
