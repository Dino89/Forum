class Bewertung < ActiveRecord::Base
  attr_accessible :Author, :KommentarID
  has_one:user_id
  has_one:kommentar_id
  
end
