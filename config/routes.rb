Rails.application.routes.draw do
  devise_for :sign_ins, :controllers => { :omniauth_callbacks => "sign_ins/omniauth_callbacks" }
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
