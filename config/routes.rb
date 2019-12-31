Rails.application.routes.draw do
  get 'planet', to: 'planets#overview', as: 'planet_overview'
  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  get 'map', to: 'map#map', as: 'map'
  get '/', to: 'home_page#index', as: 'welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
