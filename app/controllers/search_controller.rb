# encoding: UTF-8
class SearchController < ApplicationController
  
  def index
      
      if params[:searchstring]  && params[:searchstring].length > 1 

        
     # @theme = Theme.find_by_title(params[:searchstring])  
      @theme = Theme.find_by_sql(["SELECT * FROM themes where title like ? OR description like ? LIMIT 100", "%"+params[:searchstring]+"%","%"+params[:searchstring]+"%"])
      @comment = Comment.find_by_sql(["SELECT * FROM comments where title like ? OR text like ? LIMIT 100", "%"+params[:searchstring]+"%","%"+params[:searchstring]+"%"])
      respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @rooms }
      end
      
    end
  end
end
