class CreateBandsArtists < ActiveRecord::Migration
  def change
    create_table :bands_artists do |t|
      t.integer :artist_id
      t.integer :band_id
    end
  end
end
