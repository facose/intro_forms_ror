Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/form'
  post 'users/create'
  get 'users/index'
  resources :users
  root 'users#form'
end
