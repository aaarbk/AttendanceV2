Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'test/v1'
  get 'test/v2'
  get 'test/v3'
  get 'test/v4'
  get 'test/v5'

  post 'process', to: 'test#proc'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
