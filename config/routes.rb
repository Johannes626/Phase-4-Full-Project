Rails.application.routes.draw do
  resources :saved_movies, only: [:index, :create, :update, :destroy]
  resources :movies, only: [:index]
  resources :users, except: [:index]

  #Custom routes for login, persistance, and logout
  post "/login", to: "session#create"
  get "/userInSession", to: "session#get_user_in_session"
  delete "/logout", to: "session#destroy"
  
end
