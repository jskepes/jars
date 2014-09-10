class CreateVarietyNotes < ActiveRecord::Migration
  def change
    create_table :variety_notes do |t|
      t.integer :variety_id
      t.text :variety_note
      t.date :variety_note_date

      t.timestamps
    end
  end
end
