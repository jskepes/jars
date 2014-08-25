class CreateVarieties < ActiveRecord::Migration
  def change
    create_table :varieties do |t|
      t.string :name
      t.string :breeeder
      t.integer :mom_id
      t.integer :dad_id

      t.timestamps
    end
  end
end
