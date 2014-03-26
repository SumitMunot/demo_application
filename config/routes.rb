Myapp::Application.routes.draw do
  resources :card_details

  resources :shipping_details

  devise_for :admins
  resources :products

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  namespace :admins do
  	get 'dashboard' => 'home#dashboard'
  		
  end

  
end