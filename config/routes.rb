Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"
  # resources :users do
  #   resources :products
  #   resources :bookings
  # end
  # resources :products, only: :destroy
  # resources :bookings, only: :destroy
end
