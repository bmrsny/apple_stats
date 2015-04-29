Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/top_urls', to: 'top_urls#index'
    end
  end
  root 'ember#bootstrap'
  get '/*path' => 'ember#bootstrap'

end
