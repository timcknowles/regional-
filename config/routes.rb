Rails.application.routes.draw do
  resources :follow_ups
  resources :anaesthetics
  resources :doctors
  resources :patients do
    resources :anaesthetics
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
