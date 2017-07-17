Rails.application.routes.draw do
  resources :user, except: [:]
end
