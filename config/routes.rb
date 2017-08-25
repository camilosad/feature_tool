Rails.application.routes.draw do
  devise_for :users
  resources :scores
  resources :measures
  resources :features
  get 'hello_world', to: 'hello_world#index'
  root 'features#index'
end
