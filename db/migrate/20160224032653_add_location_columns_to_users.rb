class AddLocationColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :postalcode, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
  end
end
