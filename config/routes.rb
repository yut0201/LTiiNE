Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/edit'
  get 'user/delete'
  get '/' => "home#top"
  get '/about' => "home#about"

end