Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  long way: for the custom routes ex. search
  # get "/users", to: "users#index" # controller/action (bundle exec rails routes)
  # get "/users/:id/edit", to: "users#edit"
  # get "/users/:id", to: "users#show"
  # post "/users", to: "users#create"
  # patch "/users/:id", to: "users#update"
  # delete "/users/:id", to: "users#destroy"
  # get  "/users/new", to: "users#new"
  # put "/users/:id", to: "users#update"

  resources :users
end
