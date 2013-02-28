require "spec_helper"

describe Comment do
  
  # test data
   valid_comment = FactoryGirl.build(:comment)
   
   it "shuold be a valid comment" do
     valid_comment.should be_valid
   end
   valid_comment.save
   
  # validations
  it "should require a title" do
    Comment.create(
       :text => "Das juckt mich nicht! Schaut euch doch an, was fuer einen krassen Gewinn die machen. Die beuten doch alle aus!",
       :procontra => "contra",
       :user_id => "1",
       :theme_id => "2").should_not be_valid
  end
  
  it "should require a text" do
    Comment.create(
       :title => "Ausbeuter!!!",
       :procontra => "contra",
       :user_id => "1",
       :theme_id => "2").should_not be_valid
  end
end