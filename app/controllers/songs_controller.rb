class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :bio))
    @song.save
    
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @sonf.update(song_params(:name, :bio))
    
    redirect_to song_path(@song)   
  end
  
  private
  
  def song_params(*args)
    params.repuire(:song).permit(*args)
  end
end
