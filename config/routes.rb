Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :students 
  devise_for :admins

  
  get 'admins/students_list' => 'admins#students_list', as: :students_list
  get 'admins/upgrade' => 'admins#upgrade', as: :upgrade
  get 'admins/sign_in' => 'pages#home'
  delete 'admins/sign_out' => 'devise/sessions#destroy'
  resources :admins

  get 'students/sing_in' => 'pages#home'
  delete 'students/sign_out' => 'devise/sessions#destroy'
  resources :students
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
