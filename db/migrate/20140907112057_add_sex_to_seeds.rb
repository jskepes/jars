class AddSexToSeeds < ActiveRecord::Migration
  def change
    add_column :seeds, :sex, :string
  end
end
