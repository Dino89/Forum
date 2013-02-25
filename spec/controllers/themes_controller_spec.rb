require 'spec_helper'

describe ThemesController do
  
  describe "GET #index" do
    it "populates an array of themes" do
      theme = Factory(:theme)
      get :index
      assigns(:themes).should eq([theme])
    end
    
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end 
  
  describe "GET #show" do
    it "assigns the requested theme to @theme" do
      contact = Factory(:theme)
      get :show, id: contact
      assigns(:theme).should eq(theme)
    end
    
    it "renders the #show view" do
      get :show, id: Factory(:theme)
      response.should render_template :show
    end
  end
end