class CreateBewertungs < ActiveRecord::Migration
  def change
    create_table :bewertungs do |t|
      t.integer :Author
      t.integer :KommentarID

      t.timestamps
    end
  end
end
