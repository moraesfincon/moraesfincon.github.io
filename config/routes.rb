Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :contacts, only: [:new, :create]
  resources :newsletters, only: [:new, :create]
  resources :events, only: [:index]
  resources :flyers, only: [:index]

  get 'modelos', to: 'products#index'
  get 'solucoes', to: 'soluctions#index'

  get 'page/index'
  get 'page/english'
  get 'page/references'
  get 'page/about'

  root 'page#index'

end
