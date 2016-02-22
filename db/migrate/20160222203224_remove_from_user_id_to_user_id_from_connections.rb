class RemoveFromUserIdToUserIdFromConnections < ActiveRecord::Migration
  def change
    remove_column :connections, :from_user_id, :string
    remove_column :connections, :to_user_id, :string
  end
end
