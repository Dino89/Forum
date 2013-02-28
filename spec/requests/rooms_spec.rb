require 'spec_helper'

describe "Rooms" do
  describe "GET /rooms" do
    it "get romms index" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get rooms_path
      response.status.should be(200)
    end
  end
end
