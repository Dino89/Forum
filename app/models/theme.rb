class Theme < ActiveRecord::Base
  attr_accessible :description, :id, :picture, :room_id, :title, :user_id
  has_many :subscriptions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :themeVisits, :dependent => :destroy
  belongs_to :user
  belongs_to :room
  
  #validates_presence_of :description, :room_id, :title, :user_id
  #validates :description, :title, :uniqueness => true
  
  validates_presence_of :title, :description
  
end
