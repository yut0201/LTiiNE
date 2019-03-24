Rails.application.routes.draw do
  get  '/'           => "home#top"
  get  '/about'      => "home#about"
  
  get  '/events'     => 'events#index'
  get  'events/show'
  get  '/new_event'  => 'events#new'
  post '/new_event'  => 'events#create'
  get  '/edit_event' => 'events#edit'
  get  'events/delete'

  get  'users/index'
  get  'users/show'
  get  '/sign_up'    => 'users#new'
  post '/sign_up'    => 'users#create'
  get  'users/edit'
  get  'users/delete'

end