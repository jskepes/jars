class FixGardenNotes3 < ActiveRecord::Migration
  def change
     GardenNote.connection.schema_cache.clear!
    GardenNote.reset_column_information 
  end
end
