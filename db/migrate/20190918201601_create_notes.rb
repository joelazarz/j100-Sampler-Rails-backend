class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.belongs_to :kit, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.text :note
      t.integer :note_pad_start
      t.integer :not_pad_end

      t.timestamps
    end
  end
end
