class RemoveTypeFromGardenNotes2 < ActiveRecord::Migration
  def change
    remove_column :garden_notes, :type, :string
  end
end
