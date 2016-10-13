Rails.application.routes.draw do

  get 'articles/index'

  get 'articles/show'

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :contacts, only: [:new, :create]
  resources :newsletters, only: [:new, :create]
  resources :articles, only: [:index, :show]

  get 'modelos', to: 'products#index'
  get 'solucoes', to: 'soluctions#index'

  get 'page/index'
  root 'page#index'

end
