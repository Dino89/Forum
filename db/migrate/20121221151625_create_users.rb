class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :firstname
      t.string :nickname
      t.string :email
      t.string :password
      t.integer :right
      t.string :location
      t.integer :gender

      t.timestamps
    end
  end
end
