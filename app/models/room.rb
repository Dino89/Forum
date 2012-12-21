class Room < ActiveRecord::Base
  attr_accessible :id, :title
  has_many :themes
end
