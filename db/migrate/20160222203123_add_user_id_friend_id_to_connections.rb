class AddUserIdFriendIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :user_id, :integer
    add_column :connections, :friend_id, :integer
  end
end
