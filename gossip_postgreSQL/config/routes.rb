Rails.application.routes.draw do

  get 'gossips/show'
  get 'gossips/index'

  	root 'pages#index'
  	
    resources :gossips


end
 