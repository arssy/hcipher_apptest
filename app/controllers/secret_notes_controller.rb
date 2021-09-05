class SecretNotesController < ApplicationController
  before_action :set_secret_note, only: %i[ show edit update destroy ]

  # GET /secret_notes or /secret_notes.json
  def index
    @secret_notes = SecretNote.all
  end

  # GET /secret_notes/1 or /secret_notes/1.json
  def show
  end

  # GET /secret_notes/new
  def new
    @secret_note = SecretNote.new
  end

  # GET /secret_notes/1/edit
  def edit
  end

  # POST /secret_notes or /secret_notes.json
  def create
    @secret_note = SecretNote.new(secret_note_params)

    respond_to do |format|
      if @secret_note.save
        format.html { redirect_to @secret_note, notice: "Secret note was successfully created." }
        format.json { render :show, status: :created, location: @secret_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @secret_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secret_notes/1 or /secret_notes/1.json
  def update
    respond_to do |format|
      if @secret_note.update(secret_note_params)
        format.html { redirect_to @secret_note, notice: "Secret note was successfully updated." }
        format.json { render :show, status: :ok, location: @secret_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @secret_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secret_notes/1 or /secret_notes/1.json
  def destroy
    @secret_note.destroy
    respond_to do |format|
      format.html { redirect_to secret_notes_url, notice: "Secret note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secret_note
      @secret_note = SecretNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def secret_note_params
      params.require(:secret_note).permit(:title, :note)
    end
end
