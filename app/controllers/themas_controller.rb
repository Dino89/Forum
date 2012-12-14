class ThemasController < ApplicationController
  # GET /themas
  # GET /themas.json
  def index
    @themas = Thema.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @themas }
    end
  end

  # GET /themas/1
  # GET /themas/1.json
  def show
    @thema = Thema.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thema }
    end
  end

  # GET /themas/new
  # GET /themas/new.json
  def new
    @thema = Thema.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thema }
    end
  end

  # GET /themas/1/edit
  def edit
    @thema = Thema.find(params[:id])
  end

  # POST /themas
  # POST /themas.json
  def create
    @thema = Thema.new(params[:thema])

    respond_to do |format|
      if @thema.save
        format.html { redirect_to @thema, notice: 'Thema was successfully created.' }
        format.json { render json: @thema, status: :created, location: @thema }
      else
        format.html { render action: "new" }
        format.json { render json: @thema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /themas/1
  # PUT /themas/1.json
  def update
    @thema = Thema.find(params[:id])

    respond_to do |format|
      if @thema.update_attributes(params[:thema])
        format.html { redirect_to @thema, notice: 'Thema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themas/1
  # DELETE /themas/1.json
  def destroy
    @thema = Thema.find(params[:id])
    @thema.destroy

    respond_to do |format|
      format.html { redirect_to themas_url }
      format.json { head :no_content }
    end
  end
end
