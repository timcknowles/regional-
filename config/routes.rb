Rails.application.routes.draw do
  resources :follow_ups
  resources :anaesthetics do
    resources :patients
  end
  resources :doctors
  resources :patients do
    resources :anaesthetics
    resources :follow_ups

  


  end
  root 'patients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
