class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :gender, :id, :location, :name, :nickname, :password, :right, :admin
  has_many :comments
  has_many :subscriptions
  has_many :themes
  has_many :ratings
end
