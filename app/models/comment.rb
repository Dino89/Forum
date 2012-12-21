class Comment < ActiveRecord::Base
  attr_accessible :id, :procontra, :text, :theme_id, :title, :user_id
  has_one :user
  has_many :ratings
end
