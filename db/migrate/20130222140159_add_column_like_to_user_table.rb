class AddColumnLikeToUserTable < ActiveRecord::Migration
  def change
    add_column(:users, :liked, :integer, :default => 0)
  end
end
