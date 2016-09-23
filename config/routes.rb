Rails.application.routes.draw do
  # get 'teachers/new'
  # get 'teachers/create'
  get '/teachers/login' => 'teachers#login'
  post '/teachers' => 'teachers#create'
  get '/votingresult' => 'pitches#votingresult'
  get '/ranking' => 'pitches#ranking'
  get '/firstround' => 'votes#firstround'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :pitches do
    post '/setrank' => 'ranks#setrank'
    post '/rank' => 'pitches#rank'
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
