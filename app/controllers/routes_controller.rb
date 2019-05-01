class RoutesController < ApplicationController


  def index
    @routes = Route.all
    @current_user_routes = Route.where(user_id: current_user.id)

    render "index.json.jbuilder"
  end

  def show
    @route = Route.find_by_id(params["id"])
    
    render "show.json,jbuilder"
  end

  def create

    @route = Route.create!(
      date: params["date"],
      user_id: current_user.id
      )

    render "show.json.jbuilder"

  end


end
