class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :gender, :id, :location, :name, :nickname, :password, :right
  has_many :comments, :subscriptions, :themes, :ratings
end
