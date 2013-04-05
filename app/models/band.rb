class Band < ActiveRecord::Base
   attr_accessible :name #:title, :body
   has_many :albums, dependent: :destroy
   #has_many :artists
   has_many :tracks, :through => :albums, dependent: :destroy
   has_many :artists, :through => :bands_artists
end
