class AddColumsInTableUsers < ActiveRecord::Migration
  def change
    add_column(:users, :name, :string)
    add_column(:users, :firstname, :string)
    add_column(:users, :nickname, :string)
    add_column(:users, :location, :string)
    add_column(:users, :gender, :string)
  end
end
