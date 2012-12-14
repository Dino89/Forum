class Kommentar < ActiveRecord::Base
  attr_accessible :Author, :ProContraNeutral, :Text, :ThemenID, :Title
  has_many: bewertung_id
  has_one: user_id
  has_one: thema_id
end
