Rails.application.routes.draw do
  resources :answer_lists
  resources :simulation_answers
  resources :tickets
  resources :alternatives
  resources :images
  resources :solutions
  resources :exam_questions
  resources :comments
  resources :profiles
  resources :memberships
  resources :simulations
  resources :questions
  resources :exams
  resources :plans
  root 'home#index'

  devise_for :users

  get 'dashboard', to: 'dashboard#index'
end
