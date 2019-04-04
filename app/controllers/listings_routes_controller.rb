class ListingsRoutesController < ApplicationController


  def index
    @listing_routes = ListingRoute.all
    render "index.json.jbuilder"
  end



  def show
    @listing_route = ListingRoute.find_by_id(params["id"])
    render "show.json.jbuilder"
  end



  def create
    @listing_route = ListingRoute.new(
      listing_id: params["id"],
      route_id: params["id"]
      )
    @listing_route.save

    render "show.json.jbuilder"
  end



end
