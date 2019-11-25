Rails.application.routes.draw do

  root to: 'home#index'

  resources :hosts
  resources :visitors
  resources :schedules

  get 'home' => 'home#index'
  get 'scheduler' => 'home#scheduler'
  post 'scheduler' => 'home#scheduler'

end
