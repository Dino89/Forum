class CreateThemeVisits < ActiveRecord::Migration
  def change
    create_table :theme_visits do |t|
      t.integer :id
      t.datetime :time
      t.integer :user_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
