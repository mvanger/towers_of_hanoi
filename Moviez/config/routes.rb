Moviez::Application.routes.draw do
  root :to => 'welcome#index'
  get '/movies/search' => 'movies#search', as: 'movies_search'
  resources :movies
  post '/movies/:title/favorite' => 'movies#favorite', as: 'favorite'


end