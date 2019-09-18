class NotesController < ApplicationController

    def index 
        notes = Note.all 

        render json: notes
    end

    def show
        note = Note.find(params[:id])

        render json: note
    end

    def new
        note = Note.new 
    end

    def create
        note = Note.create(note_params)
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
    end

    private

    def note_params
        params.require(:note).permit(:kit_id, :user_id, :snote, :note_pad_start, :note_pad_end)
    end

end
