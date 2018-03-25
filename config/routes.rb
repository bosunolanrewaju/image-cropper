Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :images, only: [:edit, :update]
	root to: 'users#index'
end