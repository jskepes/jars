class FixGardenNotes < ActiveRecord::Migration
  def change
       GardenNote.reset_column_information 
  end
end
