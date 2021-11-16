class Playlist < ApplicationRecord
  has_and_belongs_to_many :song, join_table: :song_in_playlists
end
