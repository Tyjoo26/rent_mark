Rails.application.routes.draw do
  root "welcome#index"

  get "auth/google/callback",    to: 'sessions#create'
  get 'auth/failure',            to: redirect('/')
  get 'logout',                  to: 'sessions#destroy'

  resource :dashboard, only: :show
end
