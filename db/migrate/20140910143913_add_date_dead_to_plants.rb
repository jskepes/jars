class AddDateDeadToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :date_dead, :date, after: :date_12hr
  end
end
