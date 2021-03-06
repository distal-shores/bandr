class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    @user = current_user
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
    @user = User.create(user_params)
    
    # # Grabbing postal code from signup form
    # if @user.postalcode?
    #   @geocoder = Geocoder.search "#{user_params[:postalcode]}"
    #   #storing the 'city' element (json via geocoder via google api) from the first array element
    #   if !@geocoder.empty?
    #     @user.city = @geocoder[0].city
    #     @user.province = @geocoder[0].province
    #   end
    # end

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Welcome aboard, #{@user.first_name}"
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
      params.require(:user).permit(:admin, :first_name, :last_name, :email, :password, :postalcode)
    end
    
end




