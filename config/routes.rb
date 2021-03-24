Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :users
      resources :posts
      resources :likes
      resources :categories
      resources :pages

      root to: "users#index"
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
