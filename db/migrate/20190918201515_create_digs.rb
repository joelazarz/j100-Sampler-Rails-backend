class CreateDigs < ActiveRecord::Migration[5.2]
  def change
    create_table :digs do |t|
      t.belongs_to :kit, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.float :dig_pad_start
      t.float :dig_pad_end

      t.timestamps
    end
  end
end
