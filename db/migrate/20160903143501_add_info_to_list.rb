class AddInfoToList < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :list, :string
  end
end
