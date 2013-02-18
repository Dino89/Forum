class Comment < ActiveRecord::Base
  make_flaggable :like
  
  attr_accessible :id, :procontra, :text, :theme_id, :title, :user_id
  belongs_to :user
  has_many :ratings
  belongs_to :theme
  

 
   validates_presence_of :title, :text
  
end
