Rails.application.routes.draw do
  root to: 'short_urls#new'
	get '/', to: 'short_urls#new', as: :new_short_url
	post '/', to: 'short_urls#create', as: :short_url
	get '/:code', to: 'short_urls#show'
end
