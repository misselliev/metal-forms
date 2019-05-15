Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  resources :users, only: %i[new create]
end
