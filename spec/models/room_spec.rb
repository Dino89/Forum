require "spec_helper"

describe Room do
  # test data
   valid_room = FactoryGirl.build(:room) 

  # validations
  it "should require a title" do
    Room.create(:title => "").should_not be_valid
  end
  it "sould be a valid room" do
    valid_room.should be_valid
  end
end