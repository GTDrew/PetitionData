Rails.application.routes.draw do
  # get 'signers/index'
  #
  # get 'signers/import'

  resources :signers
  get 'signers/import'
  get 'home/location'
  get 'home/month'

  root 'home#index'
end
