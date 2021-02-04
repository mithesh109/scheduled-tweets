Rails.application.routes.draw do
  root to: "main#index"

  get "/about", to: 'about#index'
  get "/sign_up", to: 'registrations#new'
  post "/users", to: 'registrations#create'
end
