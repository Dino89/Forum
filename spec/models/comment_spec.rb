require "spec_helper"

describe Comment do
  
  # test data
   let!(:comment) { FactoryGirl.build(:comment) }
  # validations
  it "should require a title" do
    Comment.create(:title => "").should_not be_valid
  end
  it "should require a text" do
    Comment.create(:text => "").should_not be_valid
  end
  it "should not be valid with identifical titles" do
    Comment.create(:title => "Das ist doof").should_not be_valid
  end
end