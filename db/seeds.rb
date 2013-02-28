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
  
  admin = User.create(:name => "Admin", :firstname => "", :nickname => "Admin", :email => "admin@forum.de", :password => "qwertzu123", :password_confirmation => "qwertzu123", :location => "Münster", :gender => 'm')
  admin.add_role :admin
  
  themeVisits = ThemeVisit.create([
    {:user_id => 1, :theme_id => 4, :time => "2013-02-19 23:46:34"},
    {:user_id => 9, :theme_id => 4, :time => "2013-02-19 23:46:34"},
    {:user_id => 9, :theme_id => 6, :time => "2013-02-20 02:46:14"}
  ])
  
  comments = Comment.create([{:text => "Apple hat 2 Produktkategorien komplett neu erfunden. Nämlich Smartphones und Tablets. Microsoft hat es schon mal früher mit Tablets versucht und ist gescheitert. Apple gehört für mich zu den Vorreitern in Sachen Innovation ", :title => "Innovationen ? klar!", :procontra => "pro", :user_id => "3", :theme_id => "1"},
    {:text => "Man muss doch nur mal auf das technische Datenblatt gucken um zu sehen das Apple seine Kunden hart abzockt. Einen Rechner mit dem selben Zeug drin gibts bei Dell meistens schon für die Hälfte", :title => "Preisleistung ?", :procontra => "contra", :user_id => "4", :theme_id => "1"},
    {:text => "Ich habe ein Iphone 3G das gute Stück ist ca. 3 Jahre alt und ich kriege absolut keine Apps mehr dafür im Appstore. Apples Innovationspolitik kürzt einfach zu sehr die Supportzeit.", :title => "Apples Firmenpolitik", :procontra => "contra", :user_id => "6", :theme_id => "1"},
    {:text => "Man drücke allein mal auf dem Deckel eines Dell Notebooks rum. Da hab ich schon das Gefühl, dass das Ding gleich kaputt geht. Apple Sachen sind alle solide gebaut. Die Iphones die Macbooks werden aus einem Unibody Gehäuse aus Aluminium gefräst und nicht aus Plastik.", :title => "Wertigste Verarbeitung die ich kenne", :procontra => "pro", :user_id => "2", :theme_id => "1"},
    {:text => "Man zahlt halt für wertige Produkte die gut verarbeitet sind. Den Hype um das alles finde ich aber übertrieben", :title => "Naja", :procontra => "neutral", :user_id => "5", :theme_id => "1"},
    {:text => "Da bin ich ganz sicher. Sie sind topmotiviert und haben starke Leute auf der Bank.", :title => "Bayern wird Meister", :procontra => "pro", :user_id => "3", :theme_id => "4"},
    {:text => "BVB wird wieder die Schale holen.", :title => "So ein Bloedsinn", :procontra => "contra", :user_id => "4", :theme_id => "4"},
    {:text => "Wir sind dieses Jahr dran! Jawohl! Ein Leben lang Schalke!", :title => "Schalke wird's!", :procontra => "contra", :user_id => "5", :theme_id => "4"},
    {:text => "Schalke ist keine Konkurrenz fuer Bayern. Warum habe die überhaupt Stevens entlassen???", :title => "Schalke? Niemals", :procontra => "neutral", :user_id => "3", :theme_id => "4"},
    {:text => "Der hat eh schon genug Kohle", :title => "Niemals", :procontra => "contra", :user_id => "3", :theme_id => "3"},
    {:text => "Besser als die Merkel! Was würde die sagen?! Alternativlos :-D", :title => "Wen sonst", :procontra => "pro", :user_id => "2", :theme_id => "3"},
    {:text => "Mir ist es total egal, wer Kanzler wird. Die machen eh, was die wollen.", :title => "Wen kümmert's?", :procontra => "contra", :user_id => "4", :theme_id => "0"},
    {:text => "Ihr Zecken? Niemals!", :title => "Haha", :procontra => "contra", :user_id => "5", :theme_id => "5"},
    {:text => "Ihr habt ja schon seit Jahrzehnten noch nicht mal die Meisterschaft geholt, also würd ich mal ganz ruhig sein!", :title => "Schalke hat eh nix zu melden", :procontra => "neutral", :user_id => "3", :theme_id => "5"},
    {:text => "Ist sofort gekauft! Wie geil ist das denn?! Auf dem Markt gibt es für den Preis sonst nirgendswo eine vergleichbare Aussattung", :title => "300€ ? wie geil!", :procontra => "pro", :user_id => "1", :theme_id => "6"},
    {:text => "Ich hab schon das Galaxy Nexus und es einfach genial!", :title => "Nexus 4ever", :procontra => "pro", :user_id => "2", :theme_id => "6"},
    {:text => "Aber scheint ein sehr gutes Angebot zu sein.", :title => "Ich hab schon das S3.", :procontra => "neutral", :user_id => "3", :theme_id => "6"},
    {:text => "Wenn interessiert denn Android?! Das Nexus kann gegen das iPhone einpacken. Wer unbedingt ein offenes System haben will bitte die Virenprogrammierer sind schon am werkeln. Android wird das neue Windows !", :title => "Ich lieb mein iPhone", :procontra => "contra", :user_id => "4", :theme_id => "6"},
    {:text => "Was soll eigentlich dieser Quatsch? Ich kann es einfach nicht glauben, überall laufen Leute herum, die mit ihrem Finger auf ihrem Handy hin und her wischen, 
               als ob ihr Display beschlagen würde! Das hat man davon, wenn unbedingt eine Glasschicht die Vorderseite verunstalten muss! Da kann ich ja gleich ein Paket 
               Brillenputztücher mit mir herum schleppen. Mir stinkt es, jeden Tag Tag mehrmals mein Brillengläser reinigen zu müssen! Und dann noch das Handy putzen?! 
               Ohne mich! Ich will die guten alten Siemens Handys mit schönen breiten Tasten zurück! Anscheindend bin ich aber der einzige vernünftig gebliebene Mensch 
               auf diesem Planeten! Zum Glück hat mein Siemens C35i mich bisher nicht im Stich gelassen. Das wird so schnell auch n icht passieren, schließlich steckt in 
               diesem Qualitätsprodukt Ingenieurskunst. Wischt ihr ruhig weiter wie bekloppt auf eueren neumodischen Dingern herum. Mein Vorschlag für die nächste 
               bahnbrechende Innovation: Ausfahrbare Scheibenwischer fürs Handy! Geht auch garantiert nicht kaputt... ", 
               :title => "Ihr seid doch von allen guten Geistern dieser eigentlich wunderbaren Erde verlassen! Was soll man mit so einem mit Technik vollgestopften Teil?", 
               :procontra => "contra", :user_id => "6", :theme_id => "6"},
    {:text => "CeBit wird sicher interessant sein unter dem obigen Thema!", :title => "Ich bin dieses Jahr auch dort.", :procontra => "neutral", :user_id => "5", :theme_id => "9"},
    {:text => "Die Messe hat sehr stark nachgelassen! Eintrittspreise um 35 Euro??? Wer bitte gibt das für einen Messetag aus!? Schade CeBit!", :title => "Was soll ich auf der CeBit?", :procontra => "contra", :user_id => "3", :theme_id => "9"},
    {:text => "Ich war letztes Jahr dort und muss sagen, es hat sich überhaubt nicht gelohnt und daführ habe ich auch noch 35 Euro ausgegeben. Dieses Jahr wird die Messe ohne mich stattfinden...", :title => "Ich nicht mehr!", :procontra => "contra", :user_id => "6", :theme_id => "9"},
    {:text => "CeBit ist jedes Jahr immer wieder sein Geld Wert! Und mal unter uns, ich habe noch nie Eintritt bezahlt! Es gibt genügend Möglichkeiten an Karten zu kommen!", :title => "Wo liegt Euer Problem?", :procontra => "pro", :user_id => "7", :theme_id => "9"},
    {:text => "Auch in diesem Jahr gibt es wieder eine Menge Gutscheincodes auf unterschiedlichen Seiten... Also Freunde, Augen auf ;)", :title => "Freikarten", :procontra => "pro", :user_id => "2", :theme_id => "9"},
    {:text => "Aber das Nexus ist definitiv n Knaller, WENN es denn lieferbar wäre. Egal, Hauptsache Android!", :title => "Ich hab schon n HTC.", :procontra => "neutral", :user_id => "5", :theme_id => "6"},
    {:text => "Silbermond macht nach wie vor sehr gute Musik", :title => "Coole Band!", :procontra => "pro", :user_id => "5", :theme_id => "7"},
    {:text => "Ich finde mit dem letzten Album haben Silbermond einfach ihre Fans verraten. Das was da drin ist ist einfach nicht mehr Silbermond", :title => "Letztes Album", :procontra => "pro", :user_id => "3", :theme_id => "7"},
    {:text => "Wir haben auch vor 3 Jahren einen bei uns in den Garten gepflanzt. Nun gibt es jedes Jahr frischen Apfelsaft ;)", :title => "Apfelbäume sind sehr schön!", :procontra => "pro", :user_id => "3", :theme_id => "8"},
    {:text => "Anfang Winter ist die idealste Zeit", :title => "Anfang Winter", :procontra => "pro", :user_id => "3", :theme_id => "8"},
    {:text => "Bei einem harten Winter gehen die allerdings schnell ein. Ich bevorzuge anfang Frühling", :title => "harter Winter", :procontra => "contra", :user_id => "2", :theme_id => "8"},
    {:text => " Oktober/November ist Pflanzzeit für den Apfelbaum und andere Obstgehölze. Da der Apfelbaum (Malus domestica), abgesehen von den diversen Sorteneigenschaften, Besonderheiten bei der Befruchtung und unterschiedlicher Krankheitsanfälligkeit auch von höchst unterschiedlichem Wuchs (Riesen-Apfelbaum, mittlere, kleine Apfelbaum-Spindeln für Kübelhaltung auf Balkon, hängt von der Wüchsigkeit der Unterlage ab. Der Apfelbaum ist veredelt.) sein kann, sollte man sich m.E. besser bei der Auswahl beraten lassen, damit nichts schief geht. Schließlich soll das gute Stück ja möglichst jahrzehntelang halten und leckere Äpfel abwerfen. Und die sind extrem lecker und gesund, wenn sie ganz frisch vom Baum kommen.)", :title => "Pflanzzeit..", :procontra => "neutral", :user_id => "4", :theme_id => "8"},
    {:text => " Recht hast du, Dino! Aber ich Nexus ist das einzig wahre, unverbasteltes Android. Ich bekomme mit einem Nexus immer sofort neue Updates, während andere hoffen müssen, OB und wenn ja, WANN sie Updates bekommen. ", :title => "Hauptsache pures Android", :procontra => "pro", :user_id => "3", :theme_id => "6"},
    ])
    
   u = User.find_by_id(1).flag(Comment.find_by_id(4), :like)
   u = User.find_by_id(1).flag(Comment.find_by_id(14), :like)
   u = User.find_by_id(2).flag(Comment.find_by_id(13), :like)
   u = User.find_by_id(5).flag(Comment.find_by_id(13), :like)
   u = User.find_by_id(9).flag(Comment.find_by_id(13), :like)
   u = User.find_by_id(9).flag(Comment.find_by_id(14), :like)
   u = User.find_by_id(3).flag(Comment.find_by_id(18), :like)
    
  


  themes = Theme.create([
  
    {:title => "Apple, ein fauler Apfel ?",
     :picture => "http://www.maclife.de/files/data/editors/2007_02/img3585.jpg",
     :description => "Bringt Apple wirklich Innovationen und gute Technik oder trügt der Konzern mit einem Hype um seine Produkte ?",
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
     :room_id => "2"},   
    
    {:title => "Silbermond immer noch TOP??? oder doch FLOP???",
     :picture => "http://www.deutscher-radiopreis.de/presse/bilder/silbermond611.jpg",
     :description => "Wie hat sich die Band Silbermond Eurer Meinung nach entwickelt in den letzten Jahren?",
     :user_id => "6",
     :room_id => "5"},  
    
    {:title => "Sollte ich im Winter meinen Apfelbaum pflanzen ?",
     :picture => "http://www.allmystery.de/i/tBpFnIR_apfelbaum.jpg?bc",
     :description => "Tja, gerne möchte ich unseren Garten mit einem Apfelbaum bereichern. Nur wann und wie pflanzt man so einen Baum?",
     :user_id => "8",
     :room_id => "6"},  
     
    {:title => "CeBit 2013",
     :picture => "http://www.pcgames.de/screenshots/667x375/2009/03/cebit_98457u9_aufmacher.jpg",
     :description => "Die Veranstalter der weltweit größten IT-Messe Cebit haben das Schirmthema für das kommende Jahr bekannt gegeben. So soll unter dem Titel Shareconomy der Fokus auf dem Teilen von Wissen und Ressourcen im digitalen Zeitalter liegen. Was sagt Ihr zu dem Thema?",
     :user_id => "2",
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
  
  
