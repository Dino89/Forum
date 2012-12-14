class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Vorname
      t.string :Nickname
      t.string :Email
      t.string :Passwort
      t.boolean :Berechtigung
      t.string :Ort
      t.string :Geschlecht

      t.timestamps
    end
  end
end
