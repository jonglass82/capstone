Rails.application.routes.draw do

     #users

     get "/users" => "users#index"
     get "/user/current_user" => "users#show_current_user"
     post "/users" => "users#create"
     post "/sessions" => "sessions#create"

     #listings

     get "/listings" => "listings#index"
     get "/listings/:id" => "listings#show"
     post "/listings" => "listings#create"
     patch "/listings/:id" => "listings#update"
     delete "/listings/:id" => "listings#destroy"

     #routes

     get "/routes" => "routes#index"
     get "/routes/:id" => "routes#show"
     post "/routes" => "routes#create"
     patch "/routes/:id" => "routes#update"
     delete "/routes/:id" => "routes#destroy"

     #listing_route

     get "/listings_routes" => "listings_routes#index"
     get "/listings_routes/:id" => "listings_routes#show"
     post "/listings_routes" => "listings_routes#create"
     patch "/listings_routes/:id" => "listings_routes#update"
     delete "/listings_routes/:id" => "listings_routes#destroy"

end
