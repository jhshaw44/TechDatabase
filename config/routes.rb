Rails.application.routes.draw do
  
  get 'startup/index'
  root to: 'startup#index'

  get 'signup'=> 'users#new'
  resources :users 
  
 
  get "/log_in" => "sessions#new", :as => "log_in"
  post '/login' => 'sessions#create'
  get "/log_out" => "sessions#destroy", :as => "log_out"
  resources :sessions
  

end
