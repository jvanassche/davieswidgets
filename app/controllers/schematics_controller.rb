class SchematicsController < ApplicationController
  # GET /schematics
  # GET /schematics.json
  def index
    @schematics = Schematic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schematics }
    end
  end

  # GET /schematics/1
  # GET /schematics/1.json
  def show
    @schematic = Schematic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schematic }
    end
  end

  # GET /schematics/new
  # GET /schematics/new.json
  def new
    @schematic = Schematic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schematic }
    end
  end

  # GET /schematics/1/edit
  def edit
    @schematic = Schematic.find(params[:id])
  end

  # POST /schematics
  # POST /schematics.json
  def create
    @schematic = Schematic.new(params[:schematic])

    respond_to do |format|
      if @schematic.save
        format.html { redirect_to @schematic, notice: 'Schematic was successfully created.' }
        format.json { render json: @schematic, status: :created, location: @schematic }
      else
        format.html { render action: "new" }
        format.json { render json: @schematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schematics/1
  # PUT /schematics/1.json
  def update
    @schematic = Schematic.find(params[:id])

    respond_to do |format|
      if @schematic.update_attributes(params[:schematic])
        format.html { redirect_to @schematic, notice: 'Schematic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schematics/1
  # DELETE /schematics/1.json
  def destroy
    @schematic = Schematic.find(params[:id])
    @schematic.destroy

    respond_to do |format|
      format.html { redirect_to schematics_url }
      format.json { head :no_content }
    end
  end
end
