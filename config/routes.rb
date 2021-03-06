Rails.application.routes.draw do
  root 'articles#index'

  get '/articles' => 'articles#index'
  
  get '/article/new' => 'articles#new', as: 'new_article'
  post '/article/create' => 'articles#create', as: 'create_article'
  get 'articles/edit'
  get 'articles/update'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
