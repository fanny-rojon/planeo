Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :groups do
    resources :events, only: [:new, :create]
  end
<<<<<<< HEAD
  resources :event_dates, only: [] do
    resources :votes, only: :create
  end

  resources :votes, only: :destroy
=======
  resources :events, only: [:show, :edit, :destroy, :update] do
      resources :comments, only: [:new, :create]
    end
>>>>>>> master
  get '/invites/:code', to: 'invitations#register', as: :invite
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
