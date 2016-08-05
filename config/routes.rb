Rails.application.routes.draw do
  
  get 'startup/index'
  root to: 'startup#index'

  get 'signup'=> 'users#new'
  resources :users 
  
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  resources :sessions
 # get '/login' =>'sessions#new'
  post 'login' => 'sessions#create'

  

end
