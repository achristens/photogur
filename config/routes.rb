Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'images'     => 'images#index'

  post 'images'    => 'images#create'
  get 'images/new' => 'images#new'

  get 'images/:id' => 'images#show'
end
