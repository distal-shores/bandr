class BandUsersController < ApplicationController
  before_action :set_band_user, only: [:show, :edit, :update, :destroy]
  before_filter :restrict_access

  # GET /band_users
  # GET /band_users.json
  def index
    @band_users = BandUser.all
  end

  # GET /band_users/1
  # GET /band_users/1.json
  def show
  end

  # GET /band_users/new
  def new
    @band_user = BandUser.new
  end

  # GET /band_users/1/edit
  def edit
  end

  # POST /band_users
  # POST /band_users.json
  def create
    @band_user = BandUser.new(band_user_params)

    respond_to do |format|
      if @band_user.save
        format.html { redirect_to @band_user, notice: 'Band user was successfully created.' }
        format.json { render :show, status: :created, location: @band_user }
      else
        format.html { render :new }
        format.json { render json: @band_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_users/1
  # PATCH/PUT /band_users/1.json
  def update
    respond_to do |format|
      if @band_user.update(band_user_params)
        format.html { redirect_to @band_user, notice: 'Band user was successfully updated.' }
        format.json { render :show, status: :ok, location: @band_user }
      else
        format.html { render :edit }
        format.json { render json: @band_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_users/1
  # DELETE /band_users/1.json
  def destroy
    @band_user.destroy
    respond_to do |format|
      format.html { redirect_to band_users_url, notice: 'Band user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_user
      @band_user = BandUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_user_params
      params.fetch(:band_user, {})
    end
end
