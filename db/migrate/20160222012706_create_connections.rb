class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :user_id
      t.integer :connection_id
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
