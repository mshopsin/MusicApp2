class RemoveAlbumIdFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :album_id
  end
end
