class ListingsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    @listings = Listing.all

    render "index.json.jbuilder"
  end
  

  def show
    @listing = Listing.find_by_id(params["id"])
    render "show.json.jbuilder"
  end


  def create

    @listing = Listing.new(
      address: params["address"],
      description: params["description"],
      city: params["city"],
      state: params["state"],
      zip_code: params["zip_code"],
      user_id: current_user.id,
      date: params["date"],
      image: params[:image]
      )

    if @listing.save

      render "show.json.jbuilder"
    else
      render json: {errors: @listing.errors.full_messages}, status: 422
    end
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

