class CreateInterestTypes < ActiveRecord::Migration
  def change
    create_table :interest_types do |t|

      t.timestamps null: false
    end
  end
end
