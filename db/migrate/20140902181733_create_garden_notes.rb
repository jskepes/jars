class CreateGardenNotes < ActiveRecord::Migration
  def change
    create_table :garden_notes do |t|
      t.string :type
      t.string :sub_type
      t.text :g_note

      t.timestamps
    end
  end
end
