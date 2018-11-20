Rails.application.routes.draw do
  root "appointments#index"

  resources :patients
  resources :doctors
end
