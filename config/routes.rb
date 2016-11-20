Rails.application.routes.draw do
  # get 'teachers/new'
  # get 'teachers/create'
  get '/teachers/login' => 'teachers#login'
  post '/teachers' => 'teachers#create'
  get '/teachers/settings' => 'teachers#settings'
  # post '/teachers/create_cohort' => 'teachers#create_cohort'


  get '/votingresult' => 'pitches#votingresult'
  get '/ranking' => 'pitches#ranking'
  get '/firstround' => 'votes#firstround'
  get '/teams' => 'ranks#teams'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts
  resources :pitches do
    post '/setrank' => 'ranks#setrank'
    post '/rank' => 'pitches#rank'
    post '/vote' => 'votes#upvote'
  end

  resources :users, only: [:new, :create]
  resources :students, only: [:new, :create, :show, :edit, :update]
    # resources :profile, only: [:show, :edit, :update]
  # end
  resources :sessions, only: [:new, :create]

  get '/logout' => 'sessions#logout'

  root 'static_page#index'
  get '/home' => 'home#index'
  get '/home/cohorts/:id' => 'home#cohort_projects'

  # get '/students/:id/profile' => 'students#profile'
  # put '/students/:id/profile' => 'students#update'


  # namespace :admin do
  #   resources :teachers, only: [:new, :create]
  # end

  resources :teachers , except: [:index, :new, :create] do
    collection do
      post :create_cohort
      get  :show_cohort_settings
      post :set_cohort_settings
      get :edit
      put :update_cohort_setting
     end
  end
end
