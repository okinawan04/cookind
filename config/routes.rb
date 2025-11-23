Rails.application.routes.draw do
  resources :recipes
  resources :stocks
  root "home#index"
end

