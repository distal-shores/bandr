class AddFromUserIdToUserIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :from_user_id, :integer
    add_column :connections, :to_user_id, :integer
  end
end
