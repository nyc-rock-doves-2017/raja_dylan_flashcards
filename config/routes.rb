Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :decks do
    resources :games, only: [:new, :create]
  end

  root 'decks#index'
end
