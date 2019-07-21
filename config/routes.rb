Rails.application.routes.draw do
  get 'home/contacts'
  get 'articles/index'
  get 'home/index'

  resource :contacts, only: [:new, :create]

  resources :articles

end
