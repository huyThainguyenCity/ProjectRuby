Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  resources :exams
  get 'inprogress', to: 'exams#inprogress'
  get 'completed', to: 'exams#completed'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
