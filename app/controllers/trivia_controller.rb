class TriviaController < ApplicationController


  private

  def song_params
    params.require(:song).permit(:title, :song_artist_name, note_contents:[])
  end

  def index 
  end 

  def edit 
  end 


  def new 
  end 

  def show 
  end 

end

