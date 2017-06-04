class SongsController < ApplicationController
  helper_method :sort_column, :sort_direction

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
    @songs = Song.order(sort_column + " " + sort_direction)
  end

  
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
       redirect_to @song
    else
       render 'new'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
   @song = Song.find(params[:id])

   if @song.update_attributes(song_params)
     redirect_to @song
   else
     render 'edit'
   end
 end

 def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to songs_path
  end

 private

 def song_params
   params.require(:song).permit(:name, :album, :image_url, :duration, :artist_id)
 end

 def sort_column
    Song.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
