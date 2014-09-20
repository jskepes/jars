class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.integer :plant_id
      t.date :date_harvest
      t.date :date_jar
      t.integer :yield

      t.timestamps
    end
  end
end
