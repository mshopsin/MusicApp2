class RenameBandsArtists < ActiveRecord::Migration
  def change
    rename_table :bands_artists, :band_artists
  end
end
