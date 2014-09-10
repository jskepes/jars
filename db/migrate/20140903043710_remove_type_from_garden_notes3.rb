class RemoveTypeFromGardenNotes3 < ActiveRecord::Migration
  def change
    remove_column :garden_notes, :sub_type, :string
  end
end
