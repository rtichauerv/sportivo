Rails.application.routes.draw do
  resources :activities do
    post "savenew"
  end
  resources :users
  root "pages#home"
  resources :activities_users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
