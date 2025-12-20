Rails.application.routes.draw do
  resources :recipes
  resources :stocks
  
  # トップページ
  root "home#index"

  # 画面遷移したい先（例）
  get  "/recipes", to: "recipes#index"
  get  "/stocks",  to: "stocks#index"
end

