require "spec_helper"

describe Theme do
  # test data
   let!(:theme) { FactoryGirl.build(:theme) }

  # validations
  it "should require a description" do
    Theme.create(:description => "").should_not be_valid
  end
  it "should require a picture" do
    Theme.create(:picture => "").should_not be_valid
  end
  it "should require a title" do
    Theme.create(:title => "").should_not be_valid
  end
  it "sould be a valid theme" do
    theme.should be_valid
  end
end