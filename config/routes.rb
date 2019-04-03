Rails.application.routes.draw do

     #users

     get "/users" => "users#index"
     post "/users" => "users#create"
     post "/sessions" => "sessions#create"

     #listings

     get "/listings" => "listings#index"
     get "/listings/:id" => "listings#show"
     post "/listings" => "listings#create"
     patch "/listings/:id" => "listings#update"
     delete "/listings/:id" => "listings#destroy"
end
