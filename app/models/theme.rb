class Theme < ActiveRecord::Base
  attr_accessible :description, :id, :picture, :room_id, :title, :user_id
  has_many :subscriptions, :comments
  has_one :user, :room
end
