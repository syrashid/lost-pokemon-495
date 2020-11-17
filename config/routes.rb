Rails.application.routes.draw do
  # get 'pokemons', to: 'pokemons#index'
  resources :pokemons, only: [ :index, :show, :new, :create ]
end
