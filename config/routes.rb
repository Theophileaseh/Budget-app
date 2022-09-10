Rails.application.routes.draw do
  devise_for :users

  root "homes#index"

  resources :users, only: %i[index]
  resources :categories, only: %i[index show new create destroy] do
    resources :transactions, only: %i[index new create destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
