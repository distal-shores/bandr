class CreateInterestUsers < ActiveRecord::Migration
  def change
    create_table :interest_users do |t|

      t.timestamps null: false
    end
  end
end
