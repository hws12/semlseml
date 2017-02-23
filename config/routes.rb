Rails.application.routes.draw do
  devise_for :users
  root :to => "profile#index"

  # get "students", to: "users#index", as: "students"
  resources :users, :plans, :students
  get "researchscope", to: "plans#researchscope", as: "researchscope"
  get "courses/seml", to:"courses#seml", as: "seml"
end
