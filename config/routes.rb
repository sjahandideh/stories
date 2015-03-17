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

  root 'home#index'

end
