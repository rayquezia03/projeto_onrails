Rails.application.routes.draw do
  resources :answers, :questions, :formularies, :visits

  resource :usuarios, only: [:create]
  post '/login', to: 'usuarios#login'
  get '/auto_login', to: 'usuarios#auto_login'
  get '/create', to: 'usuarios#create '
  get '/index', to: 'usuarios#index'
  get '/show', to: 'usuarios#show '
  get '/update', to: 'usuarios#update '
  get '/destroy', to: 'usuarios#destroy '
end
