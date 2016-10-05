Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :newsletters, only: [:new, :create]

  get 'modelos', to: 'products#index'

  get 'page/index'
  root 'page#index'

end
