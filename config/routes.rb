Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles

  get "up" => "rails/health#show", as: :rails_health_check

end
