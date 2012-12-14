class CreateThemas < ActiveRecord::Migration
  def change
    create_table :themas do |t|
      t.integer :RaumID
      t.string :Title
      t.string :Bild
      t.text :Beschreibung
      t.integer :Author

      t.timestamps
    end
  end
end
