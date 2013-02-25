FactoryGirl.define do
  factory :user do
    email "gomez@fcb.de"
    password "12345678"
    password_confirmation "12345678"
    firstname "Mario"
    name "Gomez"
    location "Muenchen"
    gender "m"
    nickname "SuperMario"
    encrypted_password "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa"
    liked "3"
    remember_me "2013-02-25 12:41:36"
   
    #comments { [FactoryGirl.build(:comment)] }
    #subscriptions { [FactoryGirl.build(:subscription)] }
    #themes { [FactoryGirl.build(:theme)] }
    #themeVisit { [FactoryGirl.build(:themeVisit)]}
  end
end