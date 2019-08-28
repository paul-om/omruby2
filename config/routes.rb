Rails.application.routes.draw do
  root "pages#home"
  get 'contact' => 'pages#contact'
  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
