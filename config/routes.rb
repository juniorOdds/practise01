Rails.application.routes.draw do
  # devise_for :users
  # resources :friendlists
  # resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # root"friendlists#index"
  # root 'pages#home'
  root "pages#home"

  get "sign_in", to:"session#create"

  # get "sign_in" , to:]

  # Defines the root path route ("/")
  # root "posts#index"
end
