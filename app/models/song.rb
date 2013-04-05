class Song < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :album_id, :lyrics

  has_many :tracks, dependent: :destroy
end
