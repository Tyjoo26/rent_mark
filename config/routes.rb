Rails.application.routes.draw do
  root "welcome#index"
  get 'auth/google/callback',  to: 'sessions#create'
end
