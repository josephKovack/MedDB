Rails.application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'

  get 'pages/home'

  get 'pages/about'

  get 'pages/logon'

  resources :medical_records
  resources :employees
  resources :hospitals
  resources :health_care_providers
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
