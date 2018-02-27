Rails.application.routes.draw do
  root "welcome#index"

  get "auth/google/callback",    to: 'sessions#create'
  get 'auth/failure',            to: redirect('/')
  get '/login',                  to: 'sessions#new'
  post '/login',                 to: 'sessions#create'
  get 'logout',                  to: 'sessions#destroy'

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'

  resource :dashboard, only: :show

  get "account/edit/:id", to: "users#edit", as: 'edit_user'
  resource :users, only: :update

  namespace :manager do
    resources :users, only: [:edit, :update, :new, :create]
    resources :events, only: [:new, :create, :edit, :update, :destroy]
  end

  resource :events, only: [:show, :index]
end
