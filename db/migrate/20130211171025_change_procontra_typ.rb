class ChangeProcontraTyp < ActiveRecord::Migration
  def change
    change_column(:comments, :procontra, :string)
  end
end
