class CreateRaums < ActiveRecord::Migration
  def change
    create_table :raums do |t|
      t.string :Title

      t.timestamps
    end
  end
end
