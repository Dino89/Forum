class Raum < ActiveRecord::Base
  attr_accessible :Title
  has_many:thema_id
end
