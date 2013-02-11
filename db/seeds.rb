# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  users = User.create([{:name => "Gomez", :firstname => "Mario", :nickname => "SuperMario", :email => "gomez@fcb.de", :password => "123456", :admin => false, :location => "München", :gender => 'männlich'},
    {:name => "Kroos", :firstname => "Toni", :nickname => "Toni10", :email => "kroos@fcb.de", :password => "123456", :admin => false, :location => "München", :gender => "männlich"},
    {:name => "Janssen", :firstname => "Daniel", :nickname => "DJ", :email => "dj@ppp.de", :password => "123456", :admin => true, :location => "Münster", :gender => "männlich"},
    {:name => "Dicke", :firstname => "Christopher", :nickname => "Krimi", :email => "krimi@pp.de", :password => "123456", :admin => false, :location => "Münster", :gender => "männlich"},
    {:name => "Mueller", :firstname => "Christopher", :nickname => "Dino", :email => "Dino@pp.de", :password => "123456", :admin => false, :location => "Münster", :gender => "männlich"},
    {:name => "Meyer", :firstname => "Heinz", :nickname => "DerDicke", :email => "heinz@ppp.de", :password => "123456", :admin => false, :location => "Berlin", :gender => "männlich"}])
  
  comments = Comment.create([{:text => "Das ist echt super!", :title => "Da gibt's Lob für", :procontra => "pro", :user_id => "3", :theme_id => "1"},
    {:text => "Das ist gar nicht super!", :title => "Kacke", :procontra => "contra", :user_id => "4", :theme_id => "0"},
    {:text => "Ein guter Anfang, jedoch gibt es noch Verbesserungspotential", :title => "Naja", :procontra => "neutral", :user_id => "5", :theme_id => "1"},
    {:text => "Da bin ich ganz sicher. Sie sind topmotiviert und haben starke Leute auf der Bank.", :title => "Bayern wird Meister", :procontra => "pro", :user_id => "3", :theme_id => "4"},
    {:text => "BVB wird wieder die Schale holen.", :title => "So ein Bloedsinn", :procontra => "contra", :user_id => "4", :theme_id => "4"},
    {:text => "Wir sind dieses Jahr dran! Jawohl! Ein Leben lang Schalke!", :title => "Schalke wird's!", :procontra => "contra", :user_id => "3", :theme_id => "4"},
    {:text => "Schalke ist keine Konkurrenz fuer Bayern. Warum habe die überhaupt Stevens entlassen???", :title => "Schalke? Niemals", :procontra => "neutral", :user_id => "3", :theme_id => "4"}])
    
  ratings = Rating.create([{:comment_id => "4", :user_id => "1"},
    {:comment_id => "4", :user_id => "2"},
    {:comment_id => "1", :user_id => "1"},
    {:comment_id => "7", :user_id => "1"},
    {:comment_id => "7", :user_id => "2"},
    {:comment_id => "7", :user_id => "4"},
    {:comment_id => "7", :user_id => "5"},
    {:comment_id => "3", :user_id => "1"},
    {:comment_id => "1", :user_id => "4"},
    {:comment_id => "5", :user_id => "3"}])
    
  rooms = Room.create([

    {:title => "Politik"},
    {:title => "Technik"},
    {:title => "Gesellschaft"},
    {:title => "Sport"},
    {:title => "Musik"},
    {:title => "Sonstige"}
  ])


  themes = Theme.create([
  
    {:title => "Apple",
     :picture => "http://brennpunkterde.de/wp-content/uploads/2012/07/apple_logo2.jpg",
     :description => "Apple macht innovative vom Design her ansprechende Technik. Der Firmensitz ist in Californien",
     :user_id => "1",
     :room_id => "2"},
    
    
    {:title => "Paris Hilton - Immer noch Superstar ?",
     :picture => "http://www.animaatjes.de/prominente/p/paris-hilton/animaatjes-paris-hilton-13482.jpg",
     :description => "Paris Hilton lebt seit Jahren ein turbulentes Leben voller Partys und Schlagzeilen. Doch in letzter Zeit hört man immer weniger. Was spricht dafür das sie wieder kommt oder das sie auf dem absteigenden Ast zum B-Promi ist ?",
     :user_id => "2",
     :room_id => "3"},
    
    
    {:title => "Peer Steinbrueck als Kanzler",
     :picture => "http://www.fr-online.de/image/view/2012/9/1/19928328,14818112,highRes,2122306.jpg",
     :description => "In letzter Zeit wird viel über den SPD Mann als Kanzlerkandidaten diskutiert auch gerade hinsichtlich der Debatte um seine Nebeneinkünfte. Was meint ihr gibt es genug Gründe die für einen neuen Kanzler sprechen oder sollte man ihn doch lieber nicht aufstellen ?",
     :user_id => "3",
     :room_id => "1"},
    
    
    {:title => "Bayern - diesmal deutscher Meister ?",
     :picture => "http://2.bp.blogspot.com/_FNaCWBoXaAs/S-Px6zFF8vI/AAAAAAAABfg/tUUJzC1IHD4/s1600/fc_bayern.jpg",
     :description => "Was meint ihr wird Bayern dieses Mal Meister ?",
     :user_id => "1",
     :room_id => "4"},
    
    {:title => "Nexus 4 - Das Preisleistungspferd ?",
     :picture => "https://lh6.ggpht.com/TWF21RygkFpkU-vKhdAxub1mF6L9xxoqc7aD1F6tD8ElCQFES4Ljn3yuUqcM1iZxC5A=w346",
     :description => "Google hat ein eigenes Smartphone rausgebracht für nur 349 bzw 300 Euro ist es hinsichtlich verbaute Komponenten doch sehr guenstig erscheint was meint ihr ?",
     :user_id => "1",
     :room_id => "2"}
   ])
   
  subscriptions = Subscription.create([
    {:user_id => 1, :theme_id => 4}
  ])
