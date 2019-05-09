class UsersController < ApplicationController

    def index
      @users = User.all

      render "users_index.json.jbuilder"
    end


    def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if @user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show_current_user
    @user = current_user
    
    render "show.json.jbuilder"
  end

end

