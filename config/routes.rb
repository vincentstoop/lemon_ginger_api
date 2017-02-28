Rails.application.routes.draw do
  get 'recipes/index'

  namespace :api do
    resources :recipes, only: [:show, :index]
    resources :categories, only: [:show, :index]
  end

  namespace :admin do
    resources :recipes
    resources :categories
  end

  devise_for :admin
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pages#home'

  resources :photos

end
