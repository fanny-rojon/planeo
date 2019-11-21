Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :groups do
    resources :events, except: :index
  end
  get '/invites/:code', to: 'invitations#register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
