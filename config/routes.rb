Rails.application.routes.draw do

  root 'users#show'

  get 'about' => 'pages#about'


  # Session (login form/form submit/logout) routes:
  get '/login' => 'session#new'        # login platforms
  post '/login' => 'session#create'    # form submit, check credentials, create Session
  delete '/login' => 'session#destroy' # logout (delete session)

  resources :users

end