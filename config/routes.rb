Rails.application.routes.draw do

  resources :stores
  namespace :api do
    namespace :v1 do

          resources :listings
            get '/best_selling', to: 'listings#best_selling'

          resources :giftcards, only:[:index, :create, :update, :destroy]
            get '/giftcards/gc_count', to: 'giftcards#gc_count'
            get '/giftcards/best_selling', to: 'giftcards#best_selling'

          resources :users
            get '/profile', to: 'users#profile'


          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

          post '/login', to: 'auth#create'

        end
      end

end
