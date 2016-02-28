Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :categories, except: [:index]
end
