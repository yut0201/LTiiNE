Rails.application.routes.draw do
  get    '/home',       to: 'home#top'
  get    '/about',      to: 'home#about'

  resources :events, param: :event_name

  resources :users

  resources :sessions

  resources :presentations

end