class AddInfoToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :item, :string
  end
end
