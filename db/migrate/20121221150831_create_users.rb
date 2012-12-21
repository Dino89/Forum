class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.int :id
      t.string :name
      t.string :firstname
      t.string :nickname
      t.string :email
      t.string :password
      t.int :right
      t.string :location
      t.int :gender

      t.timestamps
    end
  end
end
