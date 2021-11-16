class SongInPlaylistsController < ApplicationController
  before_action :set_song_in_playlist, only: [:show, :update, :destroy]

  # GET /song_in_playlists
  def index
    @song_in_playlists = SongInPlaylist.all

    render json: @song_in_playlists
  end

  # GET /song_in_playlists/1
  def show
    render json: @song_in_playlist
  end

  # POST /song_in_playlists
  def create
    @song_in_playlist = SongInPlaylist.new(song_in_playlist_params)

    if @song_in_playlist.save
      render json: @song_in_playlist, status: :created, location: @song_in_playlist
    else
      render json: @song_in_playlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /song_in_playlists/1
  def update
    if @song_in_playlist.update(song_in_playlist_params)
      render json: @song_in_playlist
    else
      render json: @song_in_playlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /song_in_playlists/1
  def destroy
    @song_in_playlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_in_playlist
      @song_in_playlist = SongInPlaylist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_in_playlist_params
      params.permit(:song_id, :playlist_id) #.require(:song_in_playlist)
    end
end
