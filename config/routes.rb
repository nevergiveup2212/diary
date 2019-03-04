Rails.application.routes.draw do
  get 'session/new'
  get 'home/index'
  get 'user/new'

  get "login" => 'session#new' # Sua duong dan cho than thien
  post "login" => 'session#create'
  delete "logout" => 'session#destroy'

  root 'home#index'
  resources :users
end
