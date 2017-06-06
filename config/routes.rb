Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :students
  devise_for :admins

  resources :admins
  resources :students
  resources :profiles
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
