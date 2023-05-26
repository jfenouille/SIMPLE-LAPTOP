Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  devise_for :users

  resources :users, only: [:index, :show] do
    resources :products
    resources :bookings
  end
  resources :products
  resources :bookings, only: :destroy
end
