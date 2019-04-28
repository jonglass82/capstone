class ListingsRoutesController < ApplicationController
  # before_action: authenticate_user!

  def index
    @listing_routes = ListingRoute.all
    render "index.json.jbuilder"
  end



  def show
    @listing_route = ListingRoute.find_by_id(params["id"])
    render "show.json.jbuilder"
  end



  def create
    @listing_route = ListingRoute.create!(
      listing_id: params["listing_id"],
      route_id: params["route_id"]
      )

    render "show.json.jbuilder"
  end



end
