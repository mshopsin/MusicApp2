class BandArtist < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :artist
  belongs_to :band
end
