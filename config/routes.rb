Rails.application.routes.draw do

  # OmniAuth Authentication
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure',            to: redirect('/'), via: [:get, :post]
  match 'signout',                 to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  # UI routes
  get 'home',  to: 'home#angular'
  get 'read',  to: 'home#angular'
  get 'write', to: 'home#angular'
  get 'books/:id', to: 'home#angular'

  # Api routes
  api_version( module: "Api::V1",
               path:   {:value => "api/v1"}) do

    resource :user
    resources :books
    resources :my_books
    resources :chapters do
      resource :rating
    end

  end

  root 'home#angular'

end
