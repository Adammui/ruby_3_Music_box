require "test_helper"

class SongInPlaylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_in_playlist = song_in_playlists(:one)
  end

  test "should get index" do
    get song_in_playlists_url, as: :json
    assert_response :success
  end

  test "should create song_in_playlist" do
    assert_difference('SongInPlaylist.count') do
      post song_in_playlists_url, params: { song_in_playlist: { playlist_id: @song_in_playlist.playlist_id, song_id: @song_in_playlist.song_id } }, as: :json
    end

    assert_response 201
  end

  test "should show song_in_playlist" do
    get song_in_playlist_url(@song_in_playlist), as: :json
    assert_response :success
  end

  test "should update song_in_playlist" do
    patch song_in_playlist_url(@song_in_playlist), params: { song_in_playlist: { playlist_id: @song_in_playlist.playlist_id, song_id: @song_in_playlist.song_id } }, as: :json
    assert_response 200
  end

  test "should destroy song_in_playlist" do
    assert_difference('SongInPlaylist.count', -1) do
      delete song_in_playlist_url(@song_in_playlist), as: :json
    end

    assert_response 204
  end
end
