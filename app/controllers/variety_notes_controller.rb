class VarietyNotesController < ApplicationController
  before_action :set_variety_note, only: [:show, :edit, :update, :destroy]

  # GET /variety_notes
  # GET /variety_notes.json
  def index
    @variety_notes = VarietyNote.all
  end

  # GET /variety_notes/1
  # GET /variety_notes/1.json
  def show
  end

  # GET /variety_notes/new
  def new
    @variety_note = VarietyNote.new
    @variety = Variety.all
  end

  # GET /variety_notes/1/edit
  def edit
    @variety = Variety.all
  end

  # POST /variety_notes
  # POST /variety_notes.json
  def create
    @variety_note = VarietyNote.new(variety_note_params)

    respond_to do |format|
      if @variety_note.save
        format.html { redirect_to @variety_note, notice: 'Variety note was successfully created.' }
        format.json { render :show, status: :created, location: @variety_note }
      else
        format.html { render :new }
        format.json { render json: @variety_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variety_notes/1
  # PATCH/PUT /variety_notes/1.json
  def update
    respond_to do |format|
      if @variety_note.update(variety_note_params)
        format.html { redirect_to @variety_note, notice: 'Variety note was successfully updated.' }
        format.json { render :show, status: :ok, location: @variety_note }
      else
        format.html { render :edit }
        format.json { render json: @variety_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variety_notes/1
  # DELETE /variety_notes/1.json
  def destroy
    @variety_note.destroy
    respond_to do |format|
      format.html { redirect_to variety_notes_url, notice: 'Variety note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variety_note
      @variety_note = VarietyNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variety_note_params
      params.require(:variety_note).permit(:variety_id, :variety_note, :variety_note_date)
    end
end
