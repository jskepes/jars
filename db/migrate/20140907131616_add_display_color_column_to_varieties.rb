class AddDisplayColorColumnToVarieties < ActiveRecord::Migration
  def change
    add_column :varieties, :display_color, :string
  end
end
