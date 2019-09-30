class AddNameToCrates < ActiveRecord::Migration[5.2]
  def change
    add_column :crates, :name, :string
  end
end
