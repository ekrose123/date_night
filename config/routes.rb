Rails.application.routes.draw do
  resources :recipes
  resources :ingredients

  root 'welcome#index'

  get 'new' => 'ingredient#new'

  get 'welcome/about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
