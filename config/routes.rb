Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  get 'dashboard', to: 'dashboard#index'
end
