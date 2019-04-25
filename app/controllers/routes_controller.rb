class RoutesController < ApplicationController


  def index
    @routes = Route.all
    render "index.json.jbuilder"
  end

  def show
    @route = Route.find_by_id(params["id"])
    render "show.json,jbuilder"
  end

  def create
    @route = Route.create(
      date: params["date"],
      user_id: 1
      )
    if @route.save
     @listing_route = ListingRoute.create!(
      listing_id: params["id"],
      route_id: @route.id
      )

    render "show.json.jbuilder"

  end


end
