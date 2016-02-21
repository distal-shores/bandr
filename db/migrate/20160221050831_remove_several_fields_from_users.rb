class RemoveSeveralFieldsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :username, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :birthdate, :string
    remove_column :users, :email, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :password_digest, :string
    remove_column :users, :profile_pic_url, :string
  end
end
