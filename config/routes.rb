Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :cocktails do
    resources :doses
  end

  resources :ingredients

  resources :wines

  resources :beers

  resources :whiskeys
end
