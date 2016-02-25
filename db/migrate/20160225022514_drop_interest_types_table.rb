class DropInterestTypesTable < ActiveRecord::Migration
  def up
    drop_table :interest_types
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end