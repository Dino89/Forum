require "spec_helper"

describe User do
  
  valid_user = FactoryGirl.build(:user)
  
  it "should be a valid user" do
    valid_user.should be_valid
  end
  valid_user.save
  
  # validations
  it "should require a email" do
    User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "Genius", 
      :password => "12345678", :password_confirmation => "12345678", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  it "should not have identical emails" do
     User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "Genius", 
      :email => "student@fh.de", :password => "12345678", :password_confirmation => "12345678", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  
  it "should require a password" do
    User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "Genius", 
      :email => "zuckerberg@facebook.com", :password => "", :password_confirmation => "12345678", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  it "should require a password length >= 8" do
    User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "Genius", 
      :email => "zuckerberg@facebook.com", :password => "1234567", :password_confirmation => "12345678", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  it "should require a password confirmation" do
    User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "Genius", 
      :email => "zuckerberg@facebook.com", :password => "12345678", :password_confirmation => "", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  
  it "should require a nickname" do
    User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "", 
      :email => "zuckerberg@facebook.com", :password => "12345678", :password_confirmation => "12345678", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  it "should not have identical nickname" do
    User.new(:name => "Zuckerberg", :firstname => "Mark", :nickname => "Chiller", 
      :email => "zuckerberg@facebook.com", :password => "12345678", :password_confirmation => "12345678", 
      :encrypted_password => "$2a$10$P1yYR.D12k41nkgzRw5Kk.rFT7lVFrEhK.NAweZwZwsi73XPNurKa",
      :location => "Palo Alto", :gender => "m", :liked => 1000, 
      :remember_me => "2013-02-25 12:41:36").should_not be_valid
  end
  
  
  
  # role
  describe "roles" do

    it "should not approve incorrect roles" do
      valid_user.has_role?(:admin).should be_false
    end

    it "user should have role :user" do
      valid_user.has_role?(:user).should be_true
    end
  end
  
end