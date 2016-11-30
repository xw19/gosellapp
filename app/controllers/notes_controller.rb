class NotesController < ApplicationController

  def create
    @note = Note.create(note_params)
    respond_to do |format|
      if @note.save
        format.html{redirect_to prospect_path(@prospect.prospect_id), notice: 'Note was successfully posted.'}
      else
        format.html {redirect_to prospect_path }
      end
    end
  end
  
  private
  def note_params
      params.require(:note).permit(:detail)
  end
end