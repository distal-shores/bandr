class AddReferencesToMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.references :connection, index: true
      t.references :user, index: true
    end
  end
end
