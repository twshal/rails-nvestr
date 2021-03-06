Rails.application.routes.draw do

  # Home Page
  root 'dangerous#landing_page'

  # User Routes

  get 'add_user' => 'users#add_user'
  get 'manage_user' => 'users#manage_user'
  get 'delete_user' => 'users#delete_user'
  patch 'manage_user' => 'users#edit_user'
  get 'manage_user_roles' => 'users#manage_roles'
  patch 'update_user_roles' => 'users#update_user_roles'

  # Resources
  resources :users
  resources :stocks
  resources :portfolios

  # path used by Register button
  post 'register_user' => 'users#create'

  # Session Routes
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'
  get 'invalid_login' => 'dangerous#landing_page'

  # Portfolio Routes

  get 'portfolio' => 'portfolios#load'
  get 'position_history' => 'portfolios#position_history'
  get 'portfolio_history' => 'portfolios#portfolio_history'

  # Stock Routes

  get 'add_stock' => 'stocks#add_stock'
  get 'update_stock' => 'stocks#update_stock'
  post 'create_stock' => 'stocks#create'
  patch 'update_stock' => 'stocks#edit_stock'


  # Admin Routes

  get 'admin' => 'admin#manage_users'
  get 'manage_users' => 'admin#manage_users'
  get 'manage_stocks' => 'admin#manage_stocks'
  post 'admin_import' => 'admin#import'

  # Exchange Routes

  get 'exchange' => 'exchange#view'
  get 'create_trade' => 'exchange#create_trade'
  post 'create_trade' => 'exchange#execute_trade'
  post 'refresh_exchange' => 'exchange#refresh'


end
