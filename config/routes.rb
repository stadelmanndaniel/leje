Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: %i[edit update]

  get 'offers/:id/upload_pictures', to: 'offers#upload_pictures', as: :upload_pictures
  get '/profile', to: 'profiles#index'
  get '/search', to: 'offers#search'
end
