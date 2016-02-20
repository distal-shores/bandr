class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :location
      t.string :genre
      t.string :subgenre
      t.text :description

      t.timestamps null: false
    end
  end
end
