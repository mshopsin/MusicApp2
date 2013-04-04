class Band < ActiveRecord::Base
   attr_accessible :name #:title, :body
   has_many :albums
   #has_many :artists
   has_many :tracks, :through => :albums
end
