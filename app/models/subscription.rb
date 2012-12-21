class Subscription < ActiveRecord::Base
  attr_accessible :theme_id, :user_id
  belongs_to :user, :theme
end
