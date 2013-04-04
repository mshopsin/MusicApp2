class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :name
      t.integer :artist_id
      t.timestamps
    end
  end
end
