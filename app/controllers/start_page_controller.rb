class StartPageController < ApplicationController
  
  
  def index
     @theme = Theme.last
     redirect_to @theme 
  end

  def show
  end
end
