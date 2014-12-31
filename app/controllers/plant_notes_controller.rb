class PlantNotesController < ApplicationController
  before_action :set_plant_note, only: [:show, :edit, :update, :destroy]

  # GET /plant_notes
  # GET /plant_notes.json
  def index
    @plant_notes = PlantNote.all.order(plant_note_date: :desc)
  end

  # GET /plant_notes/1
  # GET /plant_notes/1.json
  def show
    @plants = Plant.all.includes(:seed, :variety)
  end

  # GET /plant_notes/new
  def new
    @plant_note = PlantNote.new

    @plant = Plant.find(params[:plant_id])
    @plant_note.plant_id = @plant.id
       
    @plants = Plant.all.includes(:seed, :variety)
    @p_array2 = @plants.map { |p| [(p.seed.variety.name + ' #' + p.seed.seed_number + ' ' + p.plant_number.to_s ), p.id] }   
  
  end

  # GET /plant_notes/1/edit
  def edit
    @plants = Plant.all.includes(:seed, :variety)
    @p_array2 = @plants.map { |p| [(p.seed.variety.name + ' #' + p.seed.seed_number + ' ' + p.plant_number.to_s ), p.id] }   
  end

  # POST /plant_notes
  # POST /plant_notes.json
  def create
    @plant_note = PlantNote.new(plant_note_params)

    respond_to do |format|
      if @plant_note.save
        format.html { redirect_to @plant_note, notice: 'Plant note was successfully created.' }
        format.json { render :show, status: :created, location: @plant_note }
      else
        format.html { render :new }
        format.json { render json: @plant_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_notes/1
  # PATCH/PUT /plant_notes/1.json
  def update
    respond_to do |format|
      if @plant_note.update(plant_note_params)
        format.html { redirect_to @plant_note, notice: 'Plant note was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_note }
      else
        format.html { render :edit }
        format.json { render json: @plant_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_notes/1
  # DELETE /plant_notes/1.json
  def destroy
    @plant_note.destroy
    respond_to do |format|
      format.html { redirect_to plant_notes_url, notice: 'Plant note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_note
      @plant_note = PlantNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_note_params
      params.require(:plant_note).permit(:plant_id, :plant_note, :plant_note_date)
    end
end
