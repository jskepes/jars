class CreatePlantNotes < ActiveRecord::Migration
  def change
    create_table :plant_notes do |t|
      t.integer :plant_id
      t.text :plant_note
      t.date :plant_note_date

      t.timestamps
    end
  end
end
