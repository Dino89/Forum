class Room < ActiveRecord::Base
  attr_accessible :id, :title
  validates_presence_of :title
  has_many :themes, :dependent => :destroy
end
