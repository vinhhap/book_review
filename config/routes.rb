Rails.application.routes.draw do
  resources :reviews
  resources :categories, except: [:index]
end
