Rails.application.routes.draw do
  	root 'pages#index'
  	get '/welcome/:first_name' , to: 'pages#index_logged', as: 'index_logged'
    resources :gossips do
    	resources :comments
    end
    resources :users, only: [:new, :create, :show]
    resources :cities
    resources :sessions, only: [:new, :create, :destroy]
end
 