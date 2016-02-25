class AddNameToInterestTypes < ActiveRecord::Migration
  def change
    add_column :interest_types, :name, :string
  end
end
