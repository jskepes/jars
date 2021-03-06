class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  # GET /plants
  # GET /plants.json
  def index
    if params[:sort_by] == 'BY_SEED'
      @plants = Plant.includes(:seed).all.order( seed_id: :asc, date_dead: :asc, date_12hr: :desc, date_5gal: :desc, date_1gal: :desc, date_grow: :desc)
    else
      @plants = Plant.order(date_dead: :asc, date_12hr: :desc, date_5gal: :desc, date_1gal: :desc, date_grow: :desc)    
    end
      
    @g_notes = GNote.all
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
    @plant_notes = @plant.plant_notes
    @harvests = @plant.harvests
  end

  # GET /plants/new
  def new
    @plant = Plant.new
    @seeds = Seed.all.includes(:variety)
    @s_array2 = @seeds.map { |s| [(s.variety.name + ' #' + s.seed_number), s.id] }
  end

  # GET /plants/1/edit
  def edit
    @seeds = Seed.all.includes(:variety)
    @s_array2 = @seeds.map { |s| [(s.variety.name + ' #' + s.seed_number), s.id] }
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:seed_id, :plant_number, :plant_type, :date_wet, :date_root, :date_dirt, :date_grow, :date_1gal, :date_5gal, :date_12hr, :date_dead)
    end
end
