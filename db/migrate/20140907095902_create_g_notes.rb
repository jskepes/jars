class CreateGNotes < ActiveRecord::Migration
  def change
    create_table :g_notes do |t|
      t.string :cat1
      t.string :cat2
      t.text :g_note
      t.date :g_note_date

      t.timestamps
    end
  end
end
