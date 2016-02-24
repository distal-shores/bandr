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
    @geocoder = Geocoder.search "#{user_params[:postalcode]}"
    #     @geocoder = Geocoder.search "#{user_params[:postalcode]}"
    city_temp=@geocoder[0].city
    province_temps=@geocoder[0].province
    
    if @user.save
      session[:user_id] = @user.id
      @user.update(:city=>city_temp, :province=>province_temps)
      @user.reload
      redirect_to @user, notice: "Welcome aboard, #{@user.first_name}!"
    else
      render 'new'
    end

    # if params[:search].present?
    #   print "hello"
    #     print hash[:city]    
    #     print "hello"
    #   hash[:city] = Geocoder.search params[:postalcode]  

    # # 1, Search Location if it already exists by city (location.first.city)
    #   # If found, then add to user: user.location = location
    #   # If not found, then create a new Location(city: location.first.city, etc) then add to the user
    # end
  
  
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
        params.require(:user).permit(:admin, :first_name, :last_name, :email, :password, :password_confirmation, :postalcode)
     
      end
    
end




