class Comment < ActiveRecord::Base
  attr_accessible :id, :procontra, :text, :theme_id, :title, :user_id
end
