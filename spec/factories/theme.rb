FactoryGirl.define do
  factory :theme do
   description "Davon bin ich felsenfest ueberzeugt! Bayern wird's!" 
   picture "http://2.bp.blogspot.com/_FNaCWBoXaAs/S-Px6zFF8vI/AAAAAAAABfg/tUUJzC1IHD4/s1600/fc_bayern.jpg"
   title "Bayern deutscher Meister ?!"
   #comments { [FactoryGirl.build(:comment)] }
   #subscriptions { [FactoryGirl.build(:subscription)] }
   #themes { [FactoryGirl.build(:theme)] }
   #themeVisit { [FactoryGirl.build(:themeVisit)]}
   #user { [FactoryGirl.build(:user)]}
   #room { [FactoryGirl.build(:room)]}
 end
end

#FactoryGirl.define do
 # factory :theme do
  #  sequence(:theme) {|t| "My theme #{t}" }
  #end
#end