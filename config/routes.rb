Rails.application.routes.draw do
 'logs/create'

  resources :todos do
  	resources :logs, only: [:create,:destroy]
  end
  root to: 'todos#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
