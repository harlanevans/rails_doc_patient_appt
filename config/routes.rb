Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/new'
  root "appointments#index"

  resources :patients
  resources :doctors do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
