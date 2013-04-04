class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :version
      t.integer :song_id
      t.timestamps
    end
  end
end
