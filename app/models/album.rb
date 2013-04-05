class Album < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :band_id
  belongs_to :band
  has_many :tracks, dependent: :destroy

end
