class CreateDemoLinks < ActiveRecord::Migration
  def change
    create_table :demo_links do |t|
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
