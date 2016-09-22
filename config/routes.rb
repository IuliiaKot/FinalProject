Rails.application.routes.draw do
  # get 'teachers/new'
  # get 'teachers/create'
  get '/teachers/login' => 'teachers#login'
  post '/teachers' => 'teachers#create'
  get '/votingresult' => 'pitches#votingresult'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :pitches do
    post '/vote' => 'votes#upvote'
  end

  resources :users, only: [:new, :create]
  resources :students, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  get '/logout' => 'sessions#logout'

  root 'static_page#index'
  get '/home' => 'home#index'

  # namespace :admin do
  #   resources :teachers, only: [:new, :create]
  # end
end
