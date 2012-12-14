class User < ActiveRecord::Base
  attr_accessible :Berechtigung, :Email, :Geschlecht, :Name, :Nickname, :Ort, :Passwort, :Vorname
  has_many:abo_id
  
end
