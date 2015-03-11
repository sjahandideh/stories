Rails.application.routes.draw do

  # UI routes
  get 'home' => 'home#angular'
  get 'about' => 'home#angular'

  # Api routes
  api_version( :module   => "Api::V1",
               :header   => { :name => "Accept", :value => "application/vnd.stories.com; version=1" },
               :defaults => { :format => :json },
               :default  => true) do

    resources :books
  end

  root 'home#index'

end
