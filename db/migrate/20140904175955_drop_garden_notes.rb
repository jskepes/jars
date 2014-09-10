class DropGardenNotes < ActiveRecord::Migration
  def change
    drop_table :garden_notes
  end
end
