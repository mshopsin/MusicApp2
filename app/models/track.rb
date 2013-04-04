class Track < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :version
  belongs_to_one :song

end
