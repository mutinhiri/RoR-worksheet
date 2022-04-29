Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
  resources :users, :except => [:new]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login'
  # post 'users', to: 'users#create'

end
