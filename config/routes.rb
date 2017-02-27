Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  get 'recipes/index'

  get 'recipes/show'

  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pages#home'

end
