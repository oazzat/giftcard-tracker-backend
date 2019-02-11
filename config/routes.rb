Rails.application.routes.draw do

  # resources :stores
  namespace :api do
    namespace :v1 do

          resources :listings, only:[:index, :create, :update, :destroy]
            # get '/best_selling', to: 'listings#best_selling'
            get '/listings/user_sold', to: 'listings#user_sold'
            get '/listings/user_purchased', to: 'listings#user_purchased'
            get '/listings/user_for_sale', to: 'listings#user_for_sale'

          resources :giftcards, only:[:index, :create, :update, :destroy]
            get '/giftcards/for_sale_by_type/:store', to: 'giftcards#for_sale_by_type'
            get '/giftcards/for_sale', to: 'giftcards#for_sale'
            get '/giftcards/all_user_cards', to: 'giftcards#all_user_cards'
            # get '/giftcards/gc_count', to: 'giftcards#gc_count'
            # get '/giftcards/best_selling', to: 'giftcards#best_selling'

          resources :users
            get '/profile', to: 'users#profile'


          resources :stores, only:[:index]
            get '/stores/best_selling_stores', to: 'stores#best_selling_stores'

          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

          post '/login', to: 'auth#create'

        end
      end

end
