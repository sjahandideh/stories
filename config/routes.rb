Rails.application.routes.draw do

  # UI routes
  get 'home',  to: 'home#angular'
  get 'read',  to: 'home#angular'
  get 'write', to: 'home#angular'
  get 'books/:id', to: 'home#angular'

  # Api routes
  api_version( :module   => "Api::V1",
               :header   => { :name => "Accept", :value => "application/vnd.stories.com; version=1" },
               :defaults => { :format => :json },
               :default  => true) do

    resources :books
  end

  root 'home#index'

end
