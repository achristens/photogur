Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :users, only: %i(create new)
  resource :sessions, only: %i(create new destroy)

  root 'images#index'

  get 'images'     => 'images#index', as: 'home'

  get 'images/:id/edit' => 'images#edit'
  patch 'images/:id' => 'images#update'

  post 'images'    => 'images#create'
  get 'images/new' => 'images#new'

  get 'images/:id' => 'images#show'

  delete 'images/:id' => 'images#destroy'

end
