Rails.application.routes.draw do

  # UI routes
  get 'home',  to: 'home#angular'
  get 'read',  to: 'home#angular'
  get 'write', to: 'home#angular'
  get 'books/:id', to: 'home#angular'

  # Api routes
  api_version( module: "Api::V1",
               path:   {:value => "api/v1"}) do

    resources :books
  end

  # OmniAuth Authentication
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure',            to: redirect('/'), via: [:get, :post]
  match 'signout',                 to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  root 'home#index'

end
