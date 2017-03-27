Rails.application.routes.draw do
  resources :users, :enrollments

  root 'enrollments#show'

  get '/course_subject', to: 'course_subject#index'
  get '/enrollments', to: 'enrollments#new'
  post '/enrollments', to: 'enrollments#create'
  delete '/enrollments', to: 'enrollments#destroy'

  get 'sessions/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'courses', to:'courses#index'
  get 'instructors', to: 'instructors#index'
  get 'subjects', to: 'subjects#index'
  get '/search', to: 'course_subject#index'
  get '/home', to: 'static_pages#home'

end
