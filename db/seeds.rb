# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  @users = User.create([{:name => "Gomez", :firstname => "Mario", :nickname => "SuperMario", :email => "gomez@fcb.de", :password => "12345678", :password_confirmation => "12345678", :location => "München", :gender => 'm', :liked => 3},
    {:name => "Kroos", :firstname => "Toni", :nickname => "Toni10", :email => "kroos@fcb.de", :password => "12345678", :password_confirmation => "12345678", :location => "München", :gender => "m", :liked => 2},
    {:name => "Janssen", :firstname => "Daniel", :nickname => "DJ", :email => "dj@ppp.de", :password => "12345678", :password_confirmation => "12345678", :location => "Münster", :gender => "m", :liked => 1},
    {:name => "Dicke", :firstname => "Christopher", :nickname => "Krimi", :email => "krimi@ppp.de", :password => "12345678", :password_confirmation => "12345678", :location => "Münster", :gender => "m"},
    {:name => "Müller", :firstname => "Christopher", :nickname => "Dino", :email => "Dino@ppp.de", :password => "12345678", :password_confirmation => "12345678", :location => "Münster", :gender => "m", :liked => 1},
    {:name => "Meyer", :firstname => "Heinz", :nickname => "DerDicke", :email => "heinz@meyer.de", :password => "12345678", :password_confirmation => "12345678", :location => "Berlin", :gender => "m"},
    {:name => "Weier", :firstname => "Melanie", :nickname => "Blume88", :email => "blume1988@weier.de", :password => "12345678", :password_confirmation => "12345678", :location => "Düsseldorf", :gender => "w"},
    {:name => "Benolli", :firstname => "Sara", :nickname => "rockygirl", :email => "rockygirl@web.de", :password => "12345678", :password_confirmation => "12345678", :location => "Stuttgart", :gender => "w"},
    ])
  @users.each do |u|
    u.add_role :user
  end
  
  admin = User.create(:name => "Admin", :firstname => "", :nickname => "Admin", :email => "admin@forum.de", :password => "12345678", :password_confirmation => "12345678", :location => "Münster", :gender => 'm')
  admin.add_role :admin
  
  themeVisits = ThemeVisit.create([
    {:user_id => 1, :theme_id => 4, :time => "2013-02-19 23:46:34"},
    {:user_id => 9, :theme_id => 4, :time => "2013-02-19 23:46:34"},
    {:user_id => 9, :theme_id => 6, :time => "2013-02-20 02:46:14"}
  ])
  
  comments = Comment.create([{:text => "Das ist echt super!", :title => "Da gibt's Lob für", :procontra => "pro", :user_id => "3", :theme_id => "1"},
    {:text => "Das ist gar nicht super!", :title => "Kacke", :procontra => "contra", :user_id => "4", :theme_id => "1"},
    {:text => "Ein guter Anfang, jedoch gibt es noch Verbesserungspotential", :title => "Naja", :procontra => "neutral", :user_id => "5", :theme_id => "1"},
    {:text => "Da bin ich ganz sicher. Sie sind topmotiviert und haben starke Leute auf der Bank.", :title => "Bayern wird Meister", :procontra => "pro", :user_id => "3", :theme_id => "4"},
    {:text => "BVB wird wieder die Schale holen.", :title => "So ein Bloedsinn", :procontra => "contra", :user_id => "4", :theme_id => "4"},
    {:text => "Wir sind dieses Jahr dran! Jawohl! Ein Leben lang Schalke!", :title => "Schalke wird's!", :procontra => "contra", :user_id => "5", :theme_id => "4"},
    {:text => "Schalke ist keine Konkurrenz fuer Bayern. Warum habe die überhaupt Stevens entlassen???", :title => "Schalke? Niemals", :procontra => "neutral", :user_id => "3", :theme_id => "4"},
    {:text => "Der hat eh schon genug Kohle", :title => "Niemals", :procontra => "contra", :user_id => "3", :theme_id => "3"},
    {:text => "Besser als die Merkel! Was würde die sagen?! Alternativlos :-D", :title => "Wen sonst", :procontra => "pro", :user_id => "2", :theme_id => "3"},
    {:text => "Mir ist es total egal, wer Kanzler wird. Die machen eh, was die wollen.", :title => "Wen kümmert's?", :procontra => "contra", :user_id => "4", :theme_id => "0"},
    {:text => "Ihr Zecken? Niemals!", :title => "Haha", :procontra => "contra", :user_id => "5", :theme_id => "5"},
    {:text => "Ihr habt ja schon seit Jahrzehnten noch nicht mal die Meisterschaft geholt, also würd ich mal ganz ruhig sein!", :title => "Schalke hat eh nix zu melden", :procontra => "neutral", :user_id => "3", :theme_id => "5"},
    {:text => "Ist sofort gekauft! Wie geil ist das denn?!", :title => "JAAAAAAAA", :procontra => "pro", :user_id => "1", :theme_id => "6"},
    {:text => "Ich hab schon das Galaxy Nexus und es einfach genial!", :title => "Nexus 4ever", :procontra => "pro", :user_id => "2", :theme_id => "6"},
    {:text => "Aber scheint ein sehr gutes Angebot zu sein.", :title => "Ich hab schon das S3.", :procontra => "neutral", :user_id => "3", :theme_id => "6"},
    {:text => "Wenn interessiert denn Android?! Das Nexus kann gegen das iPhone einpacken.", :title => "Ich lieb mein iPhone", :procontra => "contra", :user_id => "4", :theme_id => "6"},
    {:text => "Was soll eigentlich dieser Quatsch? Ich kann es einfach nicht glauben, überall laufen Leute herum, die mit ihrem Finger auf ihrem Handy hin und her wischen, 
               als ob ihr Display beschlagen würde! Das hat man davon, wenn unbedingt eine Glasschicht die Vorderseite verunstalten muss! Da kann ich ja gleich ein Paket 
               Brillenputztücher mit mir herum schleppen. Mir stinkt es, jeden Tag Tag mehrmals mein Brillengläser reinigen zu müssen! Und dann noch das Handy putzen?! 
               Ohne mich! Ich will die guten alten Siemens Handys mit schönen breiten Tasten zurück! Anscheindend bin ich aber der einzige vernünftig gebliebene Mensch 
               auf diesem Planeten! Zum Glück hat mein Siemens C35i mich bisher nicht im Stich gelassen. Das wird so schnell auch n icht passieren, schließlich steckt in 
               diesem Qualitätsprodukt Ingenieurskunst. Wischt ihr ruhig weiter wie bekloppt auf eueren neumodischen Dingern herum. Mein Vorschlag für die nächste 
               bahnbrechende Innovation: Ausfahrbare Scheibenwischer fürs Handy! Geht auch garantiert nicht kaputt... ", 
               :title => "Ihr seid doch von allen guten Geistern dieser eigentlich wunderbaren Erde verlassen! Was soll man mit so einem mit Technik vollgestopften Teil ???????????????????????????????", 
               :procontra => "contra", :user_id => "6", :theme_id => "6"},
    {:text => "Aber das Nexus ist definitiv n Knaller, WENN es denn lieferbar wäre. Egal, Hauptsache Android!", :title => "Ich hab schon n HTC.", :procontra => "neutral", :user_id => "5", :theme_id => "6"},
    {:text => " Recht hast du, Dino! Aber ich Nexus ist das einzig wahre, unverbasteltes Android. Ich bekomme mit einem Nexus immer sofort neue Updates, während andere hoffen müssen, OB und wenn ja, WANN sie Updates bekommen. ", :title => "Hauptsache Android", :procontra => "pro", :user_id => "3", :theme_id => "6"},
    ])
    
   u = User.find_by_id(1).flag(Comment.find_by_id(4), :like)
   u = User.find_by_id(1).flag(Comment.find_by_id(14), :like)
   u = User.find_by_id(2).flag(Comment.find_by_id(13), :like)
   u = User.find_by_id(5).flag(Comment.find_by_id(13), :like)
   u = User.find_by_id(9).flag(Comment.find_by_id(13), :like)
   u = User.find_by_id(9).flag(Comment.find_by_id(14), :like)
   u = User.find_by_id(3).flag(Comment.find_by_id(18), :like)
    
  


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
     
     {:title => "Dafür gewinnt Dortmund die Champions League!",
     :picture => "http://img.fotocommunity.com/images/Ballsport/Fussball/BVB-09-Deutscher-Meister-2011-a24542779.jpg",
     :description => "Nur der BVB!!! Oh Borussia...",
     :user_id => "4",
     :room_id => "4"},
    
    {:title => "Nexus 4 - Das Preisleistungspferd ?",
     :picture => "https://lh6.ggpht.com/TWF21RygkFpkU-vKhdAxub1mF6L9xxoqc7aD1F6tD8ElCQFES4Ljn3yuUqcM1iZxC5A=w346",
     :description => "Google hat ein eigenes Smartphone rausgebracht für nur 349 bzw 300 Euro ist es hinsichtlich verbaute Komponenten doch sehr guenstig erscheint was meint ihr ?",
     :user_id => "1",
     :room_id => "2"}    
   ])
   
  rooms = Room.create([

    {:title => "Politik"},
    {:title => "Technik"},
    {:title => "Gesellschaft"},
    {:title => "Sport"},
    {:title => "Musik"},
    {:title => "Sonstige"}
  ])
   
  subscriptions = Subscription.create([
    {:user_id => 1, :theme_id => 4},
    {:user_id => 9, :theme_id => 4},
    {:user_id => 9, :theme_id => 6}
  ])
  
  
