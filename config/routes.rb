Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :packages do
    member do
      get :fetch_detail
    end
  end
  resources :bookings
  devise_for :users
  authenticated :user do
    root 'bookings#index', as: :authenticated_root
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "dashboard#index"
end
