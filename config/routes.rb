Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  resources :employees, only: [:show]
  # get 'employees/index'
  # get 'employees/show'
  # remove
  get 'test/v1'
  get 'test/v2'
  get 'test/v3'
  get 'test/v4'
  get 'test/v5'
  # end remove
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post 'process', to: 'test#proc'

  root 'sessions#new'
end
