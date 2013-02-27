# encoding: UTF-8


class ThemesController < ApplicationController
  # for CanCan 
  load_and_authorize_resource
  
  # GET /themes
  # GET /themes.json
  def index
    @themes = Theme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @themes }
    end
  end

  # GET /themes/1
  # GET /themes/1.json
  def show
    @theme = Theme.find(params[:id])
    if current_user.present?
        @user = User.find(current_user.id)
    
        # create or update the user's visit of the showed theme
        @themeVisit = ThemeVisit.where(:user_id => @user.id, :theme_id => @theme.id).first
        if @themeVisit.nil?
           @themeVisit = ThemeVisit.create(:time => Time.now, :user_id => @user.id, :theme_id => @theme.id)
        else 
           @themeVisit.update_attributes(:time => Time.now)
        end
        @themeVisit.save
    end
    
    respond_to do |format|
      format.html  #show.html.erb
      format.json { render json: @theme }    
    end
  end

  # GET /themes/new
  # GET /themes/new.json
  def new
    @theme = Theme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @theme }
    end
  end

  # GET /themes/1/edit
  def edit
    @theme = Theme.find(params[:id])
  end

  # POST /themes
  # POST /themes.json
  def create
    @theme = Theme.new(params[:theme])

    respond_to do |format|
      if @theme.save
        format.html { redirect_to @theme, notice: 'Thema wurde erfolgreich erstellt.' }
        format.json { render json: @theme, status: :created, location: @theme }
      else
        format.html {  redirect_to :back, :alert => "Bitte alle Felder ausfüllen" }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /themes/1
  # PUT /themes/1.json
  def update
    @theme = Theme.find(params[:id])

    respond_to do |format|
      if @theme.update_attributes(params[:theme])
        format.html { redirect_to @theme, notice: 'Thema erfolgreich geändert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themes/1
  # DELETE /themes/1.json
  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy

    respond_to do |format|
      format.html { redirect_to(:back) }
      format.json { head :no_content }
    end
  end
  
  def subscribe_theme 
    Subscription.create(:user_id => current_user.id, :theme_id => @theme.id)
    redirect_to(:back)
  end
  
  def unsubscribe_theme
    Subscription.find_by_id(params[:users_subscription_id]).destroy
    redirect_to(:back)
  end
end
