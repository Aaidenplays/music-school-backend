Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create, :index]
  resources :users, only: [:create, :index, :show]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
  resources :material_assignments
  resources :video_assignments
  resources :assignments
  resources :materials
  resources :resources
  resources :videos
  resources :user_instruments
  resources :instruments
  resources :instructor_requests
  resources :instructors
  resources :students
end
