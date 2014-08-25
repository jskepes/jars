class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.integer :variety_id
      t.string :seed_number
      t.integer :harvest_days

      t.timestamps
    end
  end
end
