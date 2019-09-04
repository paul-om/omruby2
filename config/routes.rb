Rails.application.routes.draw do
  resources :messages
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get 'signin' => 'devise/sessions#new'
  	delete 'signout' => 'devise/sessions#destroy'
  	get 'signup' => 'devise/registration#new'
  end
  root "pages#index"
  get 'contact' => 'pages#contact'
  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
