Rails.application.routes.draw do
  
  root 'events#index'
  devise_for :users
  
  resources :events do
    resources :papers do
      resources :comments
      resources :reviews
      resources :assingments
    end
  end

  resources :users, except: :create
  resources :surveys

  post 'create_user' => 'users#create', as: :create_user  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
