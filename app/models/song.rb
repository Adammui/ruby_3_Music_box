class Song < ApplicationRecord
  belongs_to :album
  has_and_belongs_to_many :playlist, join_table: :song_in_playlists
end
