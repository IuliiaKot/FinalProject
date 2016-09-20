Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts

  resources :pitches

  resources :users, only: [:new, :create]
  resources :students, only: [:new, :create]
end
