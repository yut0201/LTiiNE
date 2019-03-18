Rails.application.routes.draw do
  get  'users/index'
  get  'users/show'
  get  '/sign_up'    => 'users#new'
  post '/sign_up'    => 'users#create'
  get  'users/edit'
  get  'users/delete'
  get  '/'           => "home#top"
  get  '/about'      => "home#about"

end