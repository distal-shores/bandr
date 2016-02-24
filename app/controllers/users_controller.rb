class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  #retreiving users location information
  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if params[:search].present?
      location = Geocoder.search(params[:postalcode])
    # 1, Search Location if it already exists by city (location.first.city)
      # If found, then add to user: user.location = location
      # If not found, then create a new Location(city: location.first.city, etc) then add to the user
    end
  
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Welcome aboard, #{@user.first_name}!"
    else
      render 'new'
    end

  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        hash = params.require(:user).permit(:admin, :first_name, :last_name, :email, :password, :password_confirmation
        # hash[:city] = Geocoder.search params[:postalcode]                            # oauth params :provider, :uid, :name, :oauth_token, :oauth_expires_at
                                    )
      end
    
end




