Rails.application.routes.draw do
  root 'fisheries#index'
  
  resources :matches
  resources :hatches
  resources :bugs
  resources :flies
  resources :fisheries
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
