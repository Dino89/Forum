class Abo < ActiveRecord::Base
  attr_accessible :Thema, :User
  has_one: user_id
  has_one: thema_id
end
