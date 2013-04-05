class Track < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :version, :song_id, :album_id
  belongs_to :song
  belongs_to :album

end
