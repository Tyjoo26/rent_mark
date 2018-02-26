Rails.application.routes.draw do
  root "welcome#index"

  get "auth/google/callback",    to: 'sessions#create'
  get 'auth/failure',            to: redirect('/')
  get 'logout',                  to: 'sessions#destroy'

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'

  resource :dashboard, only: :show
  resource :users, only: [:show, :update]
  get "account/edit", to: "users#edit", as: 'edit_user'
end
