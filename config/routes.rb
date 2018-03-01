Rails.application.routes.draw do
  root "welcome#index"

  get "auth/google/callback",    to: 'sessions#create'
  get 'auth/failure',            to: redirect('/')
  get '/login',                  to: 'sessions#new'
  post '/login',                 to: 'sessions#create'
  get 'logout',                  to: 'sessions#destroy'

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'


  namespace :manager do
    resources :units, only: [:edit, :update, :index, :show]
    resources :users, only: [:index, :edit, :show, :update, :new, :create, :destroy]
    resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  resources :charges

  resource :dashboard, only: :show
  resources :events, only: :index do
    post 'attend', on: :member
    delete 'remove', on: :member
  end

  get "account/edit/:id", to: "users#edit", as: 'edit_user'
  resource :users, only: :update

end
