class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :gender, :id, :location, :name, :nickname, :password, :admin
  has_many :comments
  has_many :subscriptions, :dependent => :destroy
  has_many :themes
  has_many :ratings
  
  validates :nickname, :email, :password, presence: false
  validates :nickname, :email, uniqueness: true
  validates_length_of :password, :minimum => 5, :message => 'Passwort >= 5 Zeichen'
  #validates :nickname, length: {minimum: 3}
  
end
