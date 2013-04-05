class Artist < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :band_ids
  has_many :band_artists
  has_many :bands, :through => :band_artists

end
