Rails.application.routes.draw do
  devise_for :sign_ins
  root 'home#index'
  resources :profiles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
