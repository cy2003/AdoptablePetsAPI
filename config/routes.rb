# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# PATCH /api/v1/notes/:id => notes#update

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'users#create'
      post '/signin', to: 'sessions#create'
      post '/rescue_sign_up', to: 'rescues#create'

      post '/pets', to: "pets#index"
      get '/pets', to: 'pets#index'
      get '/rescues/:id', to: 'rescues#show'
      resources :users, only: [:index, :create, :update]
      resources :sessions, only: [:create]
      resources :rescues, only: [:index, :create, :update]
      resources :pets
    end
  end
end
