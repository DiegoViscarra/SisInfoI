Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  get "Inicio", to: "articles#index"
  resources :articles
  root 'articles#index'
  get "/articles/new", to: 'articles#new'
  get "/articles/safe", to: 'articles#safe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :searches
end
