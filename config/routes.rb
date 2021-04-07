Rails.application.routes.draw do

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  get './requests/:id/edit', to: 'requests#edit', as: 'edit_owner'
  patch '/requests/:id(:fulfilled)', to: 'requests#update' 

  resources :users, only: [:create, :show, :index]
  resources :requests
  resources :chatrooms, only: [:index, :show, :create]
  resources :messages, only: [:index, :create]
  resources :volunteers
  resources :statuses

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end