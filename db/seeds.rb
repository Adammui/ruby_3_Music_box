Artist.create([{ group_name: 'affinage', country: 'ru' }, { group_name: 'picnic', country: 'ru' }])
Album.create(album_name: 'aff', release_date: '12.12.2001', artist_id: 1)
Song.create([{song_name:"Vano", genre:'Rock, Folk', album_id:1},{song_name:"Kotik", genre:'Rock, Folk', album_id:1}])