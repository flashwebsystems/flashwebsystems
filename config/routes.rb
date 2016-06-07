Rails.application.routes.draw do
  
  get 'pages/terminos'

  root 'users#index'

  get 'pages/como_funciona'

  get 'pages/index'

  get 'pages/about_us'

  get 'pages/faq'

  get 'pages/tos'

  get 'pages/contact_us'
  
  get     'signup/new'
  get     'login',   to: 'sessions#new'
  post    'login',   to: 'sessions#create'
  delete  'logout',   to: 'sessions#destroy'
  
  resources :logins
  resources :users
  
end
