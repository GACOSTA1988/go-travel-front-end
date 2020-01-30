Rails.application.routes.draw do
  get '/signin' => 'hangs#new'
  post '/go' => 'hangs#make'
  post '/new_user' => 'hangs#new_user'
  get '/signup' => 'hangs#signup'
  # get '/signout' => 'hangs#destroy'
  resources :destinations
end
