Rails.application.routes.draw do
  root 'pages#home'

  resources :patients, only: [:new, :create]
  resources :doctors, only: [:index]
  resources :appointments, only: [:index, :create, :destroy]

  get '/review', to: 'pages#review'
  get '/confirmation', to: 'pages#confirmation'

  # System health check (keep this)
  get "up" => "rails/health#show", as: :rails_health_check
end
