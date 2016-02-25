class DropInterestUsersTable < ActiveRecord::Migration
  def up
    drop_table :interest_users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end