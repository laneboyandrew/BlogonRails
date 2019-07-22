Rails.application.routes.draw do
  get 'about/new'
  get 'terms/new'
  get 'home/contacts'
  get 'articles/index'
  get 'home/index'

  resource :contacts, only: [:new, :create], path_names: {:new => ''}

  resources :articles

end
