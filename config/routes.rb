# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'users#new'
  # post 'users#create'
  resources :users, only: %i[new create]
end
