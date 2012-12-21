class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :id
      t.string :title

      t.timestamps
    end
  end
end
