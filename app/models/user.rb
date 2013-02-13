class User < ActiveRecord::Base
  make_flagger
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :name, :location, :gender, :admin, :nickname, :encrypted_password
  # attr_accessible :title, :body
  
  has_many :comments
  has_many :subscriptions, :dependent => :destroy
  has_many :themes
  has_many :ratings
  
  validates :nickname, :email, :password, presence: false
  validates :nickname, :email, uniqueness: true
  validates_length_of :password, :minimum => 5, :message => 'Passwort >= 5 Zeichen'
  
end
