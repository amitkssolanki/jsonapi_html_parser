Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Only create and listing api available for pages resource
  jsonapi_resources :pages, only: [:index, :create]
  
  # Only listing api available for other resources, i.e. header_tags and links
  jsonapi_resources :header_tags, only: [:index]
  jsonapi_resources :links, only: [:index]
end
