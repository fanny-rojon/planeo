Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  get "profile", to: "pages#profile"
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :groups do
    resources :events, except: :index
  end
  get '/invites/:code', to: 'invitations#register', as: :invite
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
