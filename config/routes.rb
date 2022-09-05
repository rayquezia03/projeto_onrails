Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :formularies
  resources :visits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :usuarios, only: [:create]
  post '/login', to: 'usuarios#login'
  get '/auto_login', to: 'usuarios#auto_login'
  get '/create', to: 'usuarios#create '
  get '/index', to: 'usuarios#index'
  get '/show', to: 'usuarios#show '
  get '/update', to: 'usuarios#update '
  get '/destroy', to: 'usuarios#destroy '
end
