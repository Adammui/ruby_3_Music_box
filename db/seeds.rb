# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
a = Artist.create([{ group_name: 'affinage', country: 'ru' }, { group_name: 'picnic', country: 'ru' }])

Album.create(album_name: 'aff', release_date: '12.12.2001', artist_id: 1)
Song.create([{song_name:"Vano", genre:'Rock, Folk', album_id:1},{song_name:"Kotik", genre:'Rock, Folk', album_id:1}])