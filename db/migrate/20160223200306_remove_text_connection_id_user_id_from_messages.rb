class RemoveTextConnectionIdUserIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :text, :string
    remove_column :messages, :connection_id, :string
    remove_column :messages, :user_id, :string
  end
end
