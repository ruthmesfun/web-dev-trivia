class TriviaController < ApplicationController


  private

  def song_params
    params.require(:song).permit(:title, :song_artist_name, note_contents:[])
  end

end

