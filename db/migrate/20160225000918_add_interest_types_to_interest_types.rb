class AddInterestTypesToInterestTypes < ActiveRecord::Migration
  def change
    add_column :interest_types, :genre, :string
    add_column :interest_types, :sub_genre, :string
    add_column :interest_types, :instrument, :string
    add_column :interest_types, :influence, :string
  end
end
