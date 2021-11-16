Rails.application.routes.draw do
  resources :song_in_playlists
  resources :songs
  resources :albums
  resources :playlists
  resources :artists

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
