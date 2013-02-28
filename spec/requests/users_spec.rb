require 'spec_helper'
# At top of spec file, after require 'spec_helper'


describe "users paths" do
  
    it "get sign up page" do
      get new_user_registration_path
      response.status.should be(200)
    end
    
    it "get sign in page" do
      get new_user_session_path
      response.status.should be(200)
   end
    
end