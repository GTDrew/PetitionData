Rails.application.routes.draw do
  # get 'signers/index'
  #
  # get 'signers/import'

  resources :signers do
    collection { post :import }
  end

  get 'home/location'

  root 'home#index'
end
