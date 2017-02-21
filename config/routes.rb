Rails.application.routes.draw do
  root :to => "profile#index"

  # get "students", to: "users#index", as: "students"
  resources :users
end
