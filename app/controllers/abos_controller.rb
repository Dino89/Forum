class AbosController < ApplicationController
  # GET /abos
  # GET /abos.json
  def index
    @abos = Abo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @abos }
    end
  end

  # GET /abos/1
  # GET /abos/1.json
  def show
    @abo = Abo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @abo }
    end
  end

  # GET /abos/new
  # GET /abos/new.json
  def new
    @abo = Abo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @abo }
    end
  end

  # GET /abos/1/edit
  def edit
    @abo = Abo.find(params[:id])
  end

  # POST /abos
  # POST /abos.json
  def create
    @abo = Abo.new(params[:abo])

    respond_to do |format|
      if @abo.save
        format.html { redirect_to @abo, notice: 'Abo was successfully created.' }
        format.json { render json: @abo, status: :created, location: @abo }
      else
        format.html { render action: "new" }
        format.json { render json: @abo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /abos/1
  # PUT /abos/1.json
  def update
    @abo = Abo.find(params[:id])

    respond_to do |format|
      if @abo.update_attributes(params[:abo])
        format.html { redirect_to @abo, notice: 'Abo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @abo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abos/1
  # DELETE /abos/1.json
  def destroy
    @abo = Abo.find(params[:id])
    @abo.destroy

    respond_to do |format|
      format.html { redirect_to abos_url }
      format.json { head :no_content }
    end
  end
end
