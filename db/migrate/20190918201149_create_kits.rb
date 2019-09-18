class CreateKits < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.string :name
      t.text :detail

      t.timestamps
    end
  end
end
