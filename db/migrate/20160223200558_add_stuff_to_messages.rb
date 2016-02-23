class AddStuffToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :sender_id, :string, :null => false
    add_column :messages, :recipient_id, :string
    add_column :messages, :subject, :string, :null => false
    add_column :messages, :body, :text
    add_column :messages, :read_at, :datetime
    add_column :messages, :container, :string, :default => "draft"
    add_column :messages, :sender_deleted, :boolean, :default => false
    add_column :messages, :recipient_deleted, :boolean, :default => false

  end
end
