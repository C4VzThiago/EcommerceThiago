Rails.application.routes.draw do
  
  root 'produtos#index'

  devise_for :users
  resources :produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
