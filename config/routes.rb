Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'form' => 'users#form'
  post 'users/create'
  post 'users/update'
  get 'index' => 'users#index'
  get 'users/:id/edit' => 'users#edit', as: 'users_edit'
  get 'users/:id/delete' => 'users#delete', as: 'users_delete'
  root 'users#form'
end
