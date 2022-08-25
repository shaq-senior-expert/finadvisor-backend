Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#home"

  namespace :api do
    namespace :v1 do
      resources :users
      resources :categories
      resources :transactions
      resources :budgets
      resources :bills
      post "/login", to: "auth#create"
      get "/profile", to: "users#profile"
      get "/user_transactions", to: "users#transactions"
      get "/total_spend", to:"users#total_spend"
      get "/total_income", to:"users#total_income"
    end
  end
end
