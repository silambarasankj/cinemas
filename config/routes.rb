Rails.application.routes.draw do

  resources :skills
resources :profiles
get 'districts/get', to: 'districts#get_districts'
  resources :galleries
    default_url_options :host => "localhost:3000"
  resources :districts
  resources :states
  resources :countries
  devise_for :users
	root to: "profiles#index"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
