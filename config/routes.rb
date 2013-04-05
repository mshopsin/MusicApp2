MusicApp2::Application.routes.draw do
  root to: "bands#index"
  resources :bands
  resources :albums
  resources :tracks
  resources :songs
  resources :artists

  resources :bands do
    resources :albums, :only => [:index, :new]
  end
end
