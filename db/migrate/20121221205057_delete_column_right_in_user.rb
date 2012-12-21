class DeleteColumnRightInUser < ActiveRecord::Migration
  def change
    remove_column :users, :right
  end
end