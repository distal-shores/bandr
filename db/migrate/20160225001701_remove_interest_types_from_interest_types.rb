class RemoveInterestTypesFromInterestTypes < ActiveRecord::Migration
  def change
    remove_column :interest_types, :genre, :string
    remove_column :interest_types, :sub_genre, :string
    remove_column :interest_types, :influence, :string
    remove_column :interest_types, :instrument, :string
  end
end
