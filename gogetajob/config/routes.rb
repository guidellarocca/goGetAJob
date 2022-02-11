require "sidekiq/web"

Rails.application.routes.draw do
  resources :jobs
  devise_for :users, controllers: { omniauth_callbacks: "omniauth" }

  devise_scope :user do
    get "users/sign_out" => "devise/sessions#destroy"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "jobs#index"
end
