Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/index'
  resources :users do
    resources :exercises
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
end
