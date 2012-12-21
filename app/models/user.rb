class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :gender, :id, :location, :name, :nickname, :password, :right
end
