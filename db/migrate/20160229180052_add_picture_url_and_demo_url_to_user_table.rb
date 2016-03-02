class AddPictureUrlAndDemoUrlToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :pic, :string
    add_column :users, :demo, :string
  end
end
