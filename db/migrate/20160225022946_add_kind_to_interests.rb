class AddKindToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :kind, :string
  end
end
