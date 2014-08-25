class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.integer :seed_id
      t.integer :plant_number
      t.string :plant_type
      t.date :date_wet
      t.date :date_root
      t.date :date_dirt
      t.date :date_grow
      t.date :date_1gal
      t.date :date_5gal
      t.date :date_12hr

      t.timestamps
    end
  end
end
