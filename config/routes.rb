Rails.application.routes.draw do
  root to: 'hospitals#index'

  get 'pages/home'

  get 'pages/about'

  resources :medical_records
  resources :employees
  resources :hospitals
  resources :health_care_providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
