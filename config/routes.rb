Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :trips, only: [:index]
    end
  end

  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :trips, only: [:index]
    end
  end
end
