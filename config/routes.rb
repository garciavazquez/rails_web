Rails.application.routes.draw do

  get 'errors/routes'

  root :to => 'home#index'

  get 'home/index'

  get 'home/about_us'

  get 'home/contact'

  get 'home/location'

  get 'home/services'
  post 'home/services'

  match '*a' => 'errors#route', via: [ :get, :post, :patch, :delete ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
