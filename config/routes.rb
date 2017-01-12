Rails.application.routes.draw do

  # Home Page
  root 'dangerous#landing_page'

  # User Routes

  # path used by Register button
  post 'register_user' => 'users#create'

  # Session Routes
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'
  get 'invalid_login' => 'dangerous#landing_page'

end
