Rails.application.routes.draw do
  get 'teachers/new'

  get 'teachers/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :pitches

  resources :users, only: [:new, :create]
  resources :students, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  get '/logout' => 'sessions#logout'

  root 'home#index'

  namespace :admin do
    resources :teachers, only: [:new, :create]
  end
end
