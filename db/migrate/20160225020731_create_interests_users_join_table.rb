class CreateInterestsUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :interests_users, id: false do |t|
      t.integer :interest_id
      t.integer :user_id
  end

  add_index :interests_users, :interest_id
  add_index :interests_users, :user_id

  end
end