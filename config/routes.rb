Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  devise_for :users

  root 'events#index'

  resources :checkins, only: [:new, :create]
  resources :events, only: [:index, :new, :create, :show] do
    resources :leagues, only: [:index, :new, :create, :show], controller: 'events/leagues' do
      resources :people, only: [:new, :create], controller: 'events/leagues/people'
    end
    resources :checkins, only: [:new, :create], controller: 'events/checkins'
  end
  resources :leagues, only: [:index, :show]
  resources :people, only: [:new, :create, :show]
end
