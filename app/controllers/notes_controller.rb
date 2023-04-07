class NotesController < ApplicationController
  before_action :set_note, only: %i[show update destroy]

  def index
    notes = Note.all.order_by_latest
    render json: notes
  end

  def show
    render json: @note
  end

  def create
    note = Note.new(note_params)

    if note.save
      render json: note, status: :created
    else
      render json: note.errors, status: :unprocessable_entity
    end
  end

  def update
    if @note.update(note_params)
      render json: @note, status: :ok
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    render :json, status: :no_content
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content, :background_color)
  end
end
