require "spec_helper"

describe Room do
  # test data
   let!(:room) { FactoryGirl.build(:room) }

  # validations
  it "should require a title" do
    Room.create(:title => "").should_not be_valid
  end
  it "sould be a valid room" do
    room.should be_valid
  end
end