Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  resources :users, only: [:new, :create]

  get 'signup', to: 'users#new'

  get "up" => "rails/health#show", as: :rails_health_check

end
