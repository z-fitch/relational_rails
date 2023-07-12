Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"
  get "/museum", to: "museums#index"
  get "/museum/:id", to: "museums#show"
  get "/artwork", to: "artworks#index"
  get "/artwork/:id", to: "artworks#show"
  get "/museum/:museum_id/artwork", to: "museum_artworks#index"
  post "/museum/new", to: "museums#new"

end
