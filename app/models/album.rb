class Album < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  belongs_to_one :band
  has_many :tracks

end
