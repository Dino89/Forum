# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{:Name => "Mario", :Vorname => "Gomez", :Nickname => "SuperMario", :Email => "gomez@fcb.de", :Passwort => "123456", :Berechtigung => false, :Ort => "Muenster", :Geschlecht => "m"},
  {:Name => "Toni", :Vorname => "Kroos", :Nickname => "TK", :Email => "kroos@fcb.de", :Passwort => "123456", :Berechtigung => false, :Ort => "Muenchen", :Geschlecht => "m"}])