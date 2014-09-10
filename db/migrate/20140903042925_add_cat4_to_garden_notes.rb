class AddCat4ToGardenNotes < ActiveRecord::Migration
  def change
    add_column :garden_notes, :cat2, :string
  end
end
