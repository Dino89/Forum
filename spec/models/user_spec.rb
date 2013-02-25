require "spec_helper"

describe User do
  let!(:user) { FactoryGirl.build(:user) }
  
  # validations
  it "should require a email" do
    User.create(:email => "").should_not be_valid
  end
  it "should not have identical emails" do
    User.create(:email => "gomez@fcb.de")
  end
  it "should require a password" do
    User.create(:password => "").should_not be_valid
  end
  it "should require a password confirmation" do
    User.create(:password_confirmation => "").should_not be_valid
  end
  it "should require a remember_me" do
    User.create(:remember_me => "").should_not be_valid
  end
  it "should require a firstname" do
    User.create(:firstname => "").should_not be_valid
  end
  it "should require a name" do
    User.create(:name => "").should_not be_valid
  end
  it "should require a location" do
    User.create(:location => "").should_not be_valid
  end
  it "should require a gender" do
    User.create(:gender => "").should_not be_valid
  end
  it "should require a nickname" do
    User.create(:nickname => "").should_not be_valid
  end
  it "should not have identical nickname" do
    User.create(:nickname => "SuperMario")
  end
  it "should require a encrypted_password" do
    User.create(:encrypted_password => "").should_not be_valid
  end
  it "should require a liked" do
    User.create(:liked => "").should_not be_valid
  end
  it "should be a valid user" do
    user.should be_valid
  end
  
  # role
  describe "roles" do
   # before(:each) do
    #  @user = FactoryGirl.create(:user)
    #end

    it "should not approve incorrect roles" do
      user.add_role :admin
      user.has_role?(:user).should be_false
    end

    it "should approve correct roles" do
      user.add_role :user
      user.has_role?(:user).should be_true
    end
  end
  
end