Rails.application.routes.draw do
  get '/signin' => 'hangs#new'
  post '/go' => 'hangs#make'
  # get '/signout' => 'hangs#destroy'
  resources :destinations
end
