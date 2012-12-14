class CreateAbos < ActiveRecord::Migration
  def change
    create_table :abos do |t|
      t.integer :User
      t.integer :Thema

      t.timestamps
    end
  end
end
