require "spec_helper"

describe Theme do
  # test data
   valid_theme = FactoryGirl.build(:theme)
   
   it "sould be a valid theme" do
    valid_theme.should be_valid
  end
  
  valid_theme.save
  

  # validations
  it "should require a title" do
    Theme.create(
     :picture => "http://commons.wikimedia.org/wiki/File:Papa_Benedetto.jpg",
     :description => "Der Papst kapituliert vor seinen eigenem Laden!!! Und da soll jemand noch an die Kirche glauben, wenn es selbst der Papst nicht tut?!",
     :user_id => "1",
     :room_id => "3").should_not be_valid
  end
  
  it "should require a description" do
    Theme.create(:title => "Papam non habemus",
     :picture => "http://commons.wikimedia.org/wiki/File:Papa_Benedetto.jpg",
     :user_id => "1",
     :room_id => "3").should_not be_valid
  end
end