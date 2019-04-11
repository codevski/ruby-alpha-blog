Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

  # gives us a article CRUD support with resources tag
  resources :articles

  get 'signup', to: 'users#new'
  # instead of using
  # post 'users', to: 'users#create'
  # give me all routes expect for new
  resources :users, expect: [:new]
end
