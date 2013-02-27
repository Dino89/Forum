# encoding: UTF-8
class ThemeVisitsController < ApplicationController
  
  # GET /rooms
  # GET /rooms.json
  def index
    @themeVisits = ThemeVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @themeVisits }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @themeVisit = ThemeVisit.find(params[:id])
    @themeVisits = ThemeVisit.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @themeVisit }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    @themeVisit = ThemeVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @themeVisit }
    end
  end

  # GET /rooms/1/edit
  def edit
    @themeVisit = ThemeVisit.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @themeVisit = ThemeVisit.new

    respond_to do |format|
      if @themeVisit.save
        format.html { redirect_to @themeVisit, notice: 'Thema erfolgreich erstellt.' }
        format.json { render json: @themeVisit, status: :created, location: @themeVisit }
      else
        format.html { render action: "new" }
        format.json { render json: @themeVisit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    @themeVisit = ThemeVisit.find(params[:id])

    respond_to do |format|
      if @themeVisit.update_attributes(params[:themeVisit])
        format.html { redirect_to @themeVisit, notice: 'Thema erfolgreich geändert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @themeVisit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @themeVisit = ThemeVisit.find(params[:id])
    @themeVisit.destroy

    respond_to do |format|
      format.html { redirect_to rooms_url }
      format.json { head :no_content }
    end
  end
end