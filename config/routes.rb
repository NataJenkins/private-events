Rails.application.routes.draw do
  resources :events
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'users/:id' => 'users#show'
  resources :users, only: [:show]
  resources :attendee, only: [:create]
end
