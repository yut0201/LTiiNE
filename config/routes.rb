Rails.application.routes.draw do
	get    '/home',       to: 'home#top'

	resources :events, param: :event_name, shallow: true do
		resources :presentations do
    		resources :comments
		end
	end

	resources :users

	resources :sessions

	# resources :comments
end