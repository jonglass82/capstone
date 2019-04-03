class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    render "index.json.jbuilder"
  end

  def show
    @listing = Listing.find_by_id(params["id"])
    render "show.json.jbuilder"
  end

  def create
    @listing = Listing.create(
      address: params["address"],
      description: params["description"],
      user_id: params["user_id"]
      )

    render "show.json.jbuilder"
  end

  def update
    @listing = Listing.find_by_id(params["id"])
    @listing.address = params["address"] || @listing.address
    @listing.description = params["description"] || @listing.description
    
        if @listing.save
          render "show.json.jbuilder"
        else
          render json: { errors: @listing.errors.full_messages }, status: :unprocessable_entity
        end
  end

  def destroy
    @listing = Listing.find_by_id(params["id"])
    @listing.delete

    render "index.json.jbuilder"
  end

end

