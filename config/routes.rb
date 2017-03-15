Rails.application.routes.draw do
  resources :courses, :subjects, :instructors
  get 'signup', to: 'users#new'


end
