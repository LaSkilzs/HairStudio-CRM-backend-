Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :appointments
      resources :salons, only: [:index]
      resources :services, only: [:index]
      resources :users
      resources :galleries, only: [:index]
      resources :messages, only: [:create, :index]
      resources :conversations, only: [:index, :create]
      resources :comments, only: [:index, :create]
      resources :service_types, only: [:index]
      resources :hair_cards
      resources :hair_personalities
      resources :profiles
      post '/login', to: 'auth#login'
      get '/auth', to: 'users#authenticate'
    end
  end
  mount ActionCable.server => '/cable'
end
