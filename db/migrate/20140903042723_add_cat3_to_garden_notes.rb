class AddCat3ToGardenNotes < ActiveRecord::Migration
  def change
    add_column :garden_notes, :cat1, :string
  end
end
