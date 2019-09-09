Rails.application.routes.draw do
  get    '/home',       to: 'home#top'

  resources :events, param: :event_name, shallow: true do
    resources :presentations
  end

  resources :users

  resources :sessions
end