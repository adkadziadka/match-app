Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :students
  devise_for :admins

  delete 'admins/sign_out' => 'devise/sessions#destroy'
  resources :admins

  delete 'students/sign_out' => 'devise/sessions#destroy'
  resources :students
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
