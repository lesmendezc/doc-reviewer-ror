Rails.application.routes.draw do
  
  root 'papers#index'

  resources :papers do
    resources :comments
  end

  resources :surveys
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
