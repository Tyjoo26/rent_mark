Rails.application.routes.draw do
  root "welcome#index"

  get "auth/google/callback",  to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  resource :dashboard, only: :show
end
