Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  resources :courses
  resources :cohorts
  resources :teachers
  resources :students
  resources :users
  
end
