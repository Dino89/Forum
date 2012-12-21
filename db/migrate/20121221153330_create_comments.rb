class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id
      t.text :text
      t.string :title
      t.integer :procontra
      t.integer :theme_id
      t.integer :user_id

      t.timestamps
    end
  end
end
