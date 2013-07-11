Moviesz::Application.routes.draw do

root :to => 'movies#index'

get '/movies' => 'movies#movies'

get '/movies/:id' => 'movies#show'

post '/movies' => 'movies#create'

#resources :movies

# movies GET    /movies(.:format)          movies#index
#            POST   /movies(.:format)          movies#create
#  new_movie GET    /movies/new(.:format)      movies#new
# edit_movie GET    /movies/:id/edit(.:format) movies#edit
#      movie GET    /movies/:id(.:format)      movies#show
#            PATCH  /movies/:id(.:format)      movies#update
#            PUT    /movies/:id(.:format)      movies#update
#            DELETE /movies/:id(.:format)      movies#destroy


####ACTORS
get '/actors' => 'actors#show'
end