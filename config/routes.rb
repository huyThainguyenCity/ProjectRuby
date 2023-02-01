Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  resources :exams do
    resources :questions
  end
  get 'newest', to: 'exams#newest'
  get 'completed', to: 'exams#completed'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
