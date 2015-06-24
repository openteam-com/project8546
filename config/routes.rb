Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  namespace :manage do
    resources :events
    root to: 'events#index'
  end

  resources :events, only: [:index]

  get 'participants', as: :participants, to: 'events#index', defaults: {event_id: 2}
  get 'sponsors', as: :sponsors, to: 'events#index', defaults: {event_id: 3}

  get 'about',            as: :about, to: 'static_pages#about'
  get 'show_conditions',  as: :show_conditions, to: 'static_pages#show_conditions'

  root to: 'events#index'
end
