Rails.application.routes.draw do
  get 'admin/index'
  get 'home/index'
  get 'login/index'
  get 'login/new'
  post 'login/create'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  root 'users#index'
  post 'admin/create'
  get 'admin/login_admin'
end
