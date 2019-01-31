Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
          resources :listings
          resources :giftcards
          resources :users
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
        end
      end
      
end
