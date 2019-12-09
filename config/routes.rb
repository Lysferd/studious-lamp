Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  resources :hosts
  resources :visitors
  resources :schedules

  get 'home' => 'home#index'
  get 'scheduler' => 'home#scheduler'
  post 'scheduler' => 'home#scheduler'
  post 'approve' => 'schedules#approve'

  get 'add_host' => 'schedules#add_host'

end
