class ThemeVisit < ActiveRecord::Base
  
  attr_accessible :id, :theme_id, :time, :user_id
  
  belongs_to :user
  belongs_to :theme
end
