Rails.application.routes.draw do
  get    '/',           to: 'home#top'
  get    '/about',      to: 'home#about'
  
  get    '/events',     to: 'events#index'
  get    'events/show'
  get    '/new_event',  to: 'events#new'
  post   '/new_event',  to: 'events#create'
  get    '/edit_event', to: 'events#edit'
  get    '/delete_event', to: 'events#delete'

  get    'users/index'
  get    'users/show'
  get    '/sign_up',    to: 'users#new'
  post   '/sign_up',    to: 'users#create'
  get    'users/edit'
  get    'users/delete'

  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'

  get    'presentations/new'
  post   'presentations/new', to: 'presentations#create'
  get    'presentations/show'
  get    'presentations/index'
  delete    'presentations/delete', to: 'presentations#delete'
  get    'presentations/edit', to: 'presentations#edit'

end