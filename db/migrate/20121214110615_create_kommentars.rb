class CreateKommentars < ActiveRecord::Migration
  def change
    create_table :kommentars do |t|
      t.integer :ThemenID
      t.integer :Author
      t.text :Text
      t.string :Title
      t.string :ProContraNeutral

      t.timestamps
    end
  end
end
