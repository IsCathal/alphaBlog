Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  get 'pages/home'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  resources :users
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]



  get "up" => "rails/health#show", as: :rails_health_check

end
