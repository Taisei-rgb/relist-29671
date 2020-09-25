class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_note, only: [:show,:edit,:update,:destroy]

  def index
    @notes = Note.all.order(id: "DESC")
  end

  def show
  end

  def new 
    @note = Note.new
  end

  def update
    if @note.update(note_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to @note
    else
      render 'new'
    end
  end

  def edit 
  end

  def destroy 
    if @note.destroy
      redirect_to notes_path
    end
  end

  private

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params 
    params.require(:note).permit(:title, :content).merge(user_id: current_user.id)
  end
end
