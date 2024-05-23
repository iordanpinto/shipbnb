Rails.application.routes.draw do
  devise_for :users
  root to: "ships#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"

  resources :ships, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:create]
  end
  get "/dashboard", to: "pages#dashboard"
  patch "booking/:id/accept", to: "bookings#accept", as: "accept"
  patch "booking/:id/reject", to: "bookings#reject", as: "reject"
end
