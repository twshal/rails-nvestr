Rails.application.routes.draw do

  # Home Page
  root 'dangerous#landing_page'

  # User Routes

  get 'add_user' => 'users#add_user'
  get 'manage_user' => 'users#manage_user'
  get 'delete_user' => 'users#delete_user'
  patch 'manage_user' => 'users#edit_user'
  get 'manage_user_roles' => 'users#manage_roles'


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

  # Admin Routes

  get 'admin' => 'admin#dashboard'
  get 'manage_users' => 'admin#manage_users'

end
