class Thema < ActiveRecord::Base
  attr_accessible :Author, :Beschreibung, :Bild, :RaumID, :Title
  has_many: kommentar_id
  has_many: abo_id
  has_one: raum_id
end
