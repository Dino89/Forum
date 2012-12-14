# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121214110753) do

  create_table "abos", :force => true do |t|
    t.integer  "User"
    t.integer  "Thema"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bewertungs", :force => true do |t|
    t.integer  "Author"
    t.integer  "KommentarID"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "kommentars", :force => true do |t|
    t.integer  "ThemenID"
    t.integer  "Author"
    t.text     "Text"
    t.string   "Title"
    t.string   "ProContraNeutral"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "raums", :force => true do |t|
    t.string   "Title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "themas", :force => true do |t|
    t.integer  "RaumID"
    t.string   "Title"
    t.string   "Bild"
    t.text     "Beschreibung"
    t.integer  "Author"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "Name"
    t.string   "Vorname"
    t.string   "Nickname"
    t.string   "Email"
    t.string   "Passwort"
    t.boolean  "Berechtigung"
    t.string   "Ort"
    t.string   "Geschlecht"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
