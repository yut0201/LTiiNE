Rails.application.routes.draw do
  get    '/home',       to: 'home#top'
  get    '/about',      to: 'home#about'

  resources :events, param: :event_name, shallow: true do
    resources :presentations
  end

  resources :users

  resources :sessions

  # resources :presentations, param: :event_name

end