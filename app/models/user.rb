class User < ActiveRecord::Base
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :name, :location, :gender, :nickname, :encrypted_password, :current_password, :liked
  
  make_flagger
  rolify
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable


  has_many :comments
  has_many :subscriptions, :dependent => :destroy
  has_many :themes
  has_many :themeVisits, :dependent => :destroy
  
  validates :nickname, :email, presence: false
  validates :nickname, :email, uniqueness: true
  validates_length_of :password, :minimum => 8, :message => 'Passwort >= 8 Zeichen', :on => :create
  validates_length_of :current_password, :minimum => 8, :message => 'Passwort >= 8 Zeichen', :on => :edit
  validates_confirmation_of :password
  validates_length_of :password, :within => Devise.password_length, :allow_blank => true
end
