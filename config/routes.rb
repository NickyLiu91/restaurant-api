Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :accounts
  namespace :api do
    # get "/accounts", to: "accounts#index"
    # get "/accounts/:id", to: "accounts#show"
    # get "/accounts/new", to: "accounts#new"
    # post "/accounts", to: "accounts#create"
    # get "/accounts/:id/edit", to: "accounts#edit"
    # put "/accounts/:id", to: "accounts#update"
    # delete "/accounts/:id", to: "accounts#destroy"

      resources :accounts
      post '/login', to: 'auth#create'
      get '/profile', to: 'accounts#profile'
      get 'restaurants/:id/menu/', to: 'restaurants#menu'
      resources :restaurants
      resources :orders
      resources :menuitems
      resources :orderitems
  end
end
