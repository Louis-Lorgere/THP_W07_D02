Rails.application.routes.draw do
  get 'users/show'
  root "events#index"
  devise_for :users
  resources :events, only: [:new, :show, :index, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
