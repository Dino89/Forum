class Theme < ActiveRecord::Base
  attr_accessible :description, :id, :picture, :room_id, :title, :user_id
  has_many :subscriptions
  has_many :comments
  has_one :user
  has_one :room
end
