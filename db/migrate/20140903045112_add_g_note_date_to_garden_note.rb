class AddGNoteDateToGardenNote < ActiveRecord::Migration
  def change
    add_column :garden_notes, :g_note_date, :date
  end
end
