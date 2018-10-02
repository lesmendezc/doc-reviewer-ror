Rails.application.routes.draw do
  
  root 'events#index'
  devise_for :users
  
  resources :events do
    resources :papers do
      resources :comments
      resources :reviews
    end
  end

  resources :users, :controller => "users"
  resources :surveys

  # get "users/new_user" => "users#new_user", as: :users_new_user
  # post "create_user" => "users#create", as: :create_user 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
