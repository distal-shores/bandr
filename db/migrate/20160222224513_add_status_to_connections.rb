class AddStatusToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :status, :string
  end
end
