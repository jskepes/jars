class AddShortNameToVariety < ActiveRecord::Migration
  def change
    add_column :varieties, :short_name, :string
  end
end
