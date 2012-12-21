class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :id
      t.string :title
      t.string :picture
      t.text :description
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
