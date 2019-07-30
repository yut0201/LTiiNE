Rails.application.routes.draw do
  get    '/home',       to: 'home#top'
  get    '/about',      to: 'home#about'

  resources :events, param: :event_name

  resource :users

  resources :sessions

  get    'presentations/new'
  post   'presentations/new', to: 'presentations#create'
  get    'presentations/show'
  get    'presentations/index'
  delete 'presentations/delete', to: 'presentations#delete'
  get    'presentations/edit', to: 'presentations#edit'

end