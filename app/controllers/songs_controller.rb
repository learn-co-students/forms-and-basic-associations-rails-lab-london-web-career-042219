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
    # byebug
    # Note.create(note_params)

    artist = Artist.find_or_create_by(name: params[:song][:artist_name])
    @song = Song.create(title: params[:song][:title], artist: artist, genre_id: params[:song][:genre_id])

    if @song.save
      params[:song][:notes].each do |content|
        Note.create(content: content, song_id: @song.id)
      end
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_name, :genre_id, note_contents: [])
  end

  # def note_params
  #   params.require(:note).permit(:content, :song_id)
  # end
end
