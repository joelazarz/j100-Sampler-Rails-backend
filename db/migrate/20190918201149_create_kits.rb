class CreateKits < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.string :name
      t.text :detail
      t.string :sample_url
      t.string :image_url

      t.timestamps
    end
  end
end
