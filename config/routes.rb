Rails.application.routes.draw do
  devise_for :users
  get 'places_api/index'

  get 'home/index'

  root to: 'home#index'

  resources :libraries do
    collection { post :import}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
