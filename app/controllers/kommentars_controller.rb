class KommentarsController < ApplicationController
  # GET /kommentars
  # GET /kommentars.json
  def index
    @kommentars = Kommentar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kommentars }
    end
  end

  # GET /kommentars/1
  # GET /kommentars/1.json
  def show
    @kommentar = Kommentar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kommentar }
    end
  end

  # GET /kommentars/new
  # GET /kommentars/new.json
  def new
    @kommentar = Kommentar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kommentar }
    end
  end

  # GET /kommentars/1/edit
  def edit
    @kommentar = Kommentar.find(params[:id])
  end

  # POST /kommentars
  # POST /kommentars.json
  def create
    @kommentar = Kommentar.new(params[:kommentar])

    respond_to do |format|
      if @kommentar.save
        format.html { redirect_to @kommentar, notice: 'Kommentar was successfully created.' }
        format.json { render json: @kommentar, status: :created, location: @kommentar }
      else
        format.html { render action: "new" }
        format.json { render json: @kommentar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kommentars/1
  # PUT /kommentars/1.json
  def update
    @kommentar = Kommentar.find(params[:id])

    respond_to do |format|
      if @kommentar.update_attributes(params[:kommentar])
        format.html { redirect_to @kommentar, notice: 'Kommentar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kommentar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kommentars/1
  # DELETE /kommentars/1.json
  def destroy
    @kommentar = Kommentar.find(params[:id])
    @kommentar.destroy

    respond_to do |format|
      format.html { redirect_to kommentars_url }
      format.json { head :no_content }
    end
  end
end
