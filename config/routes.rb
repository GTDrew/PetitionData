Rails.application.routes.draw do
  # get 'signers/index'
  #
  # get 'signers/import'

  resources :signers do
    collection { post :import }
  end
  get '/import', to: 'signers#import'
  get 'home/location'
  get 'home/month'

  root 'home#index'
end
