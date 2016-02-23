class InterestUsersController < ApplicationController
  before_action :set_interest_user, only: [:show, :edit, :update, :destroy]
  before_filter :restrict_access

  # GET /interest_users
  # GET /interest_users.json
  def index
    @interest_users = InterestUser.all
  end

  # GET /interest_users/1
  # GET /interest_users/1.json
  def show
  end

  # GET /interest_users/new
  def new
    @interest_user = InterestUser.new
  end

  # GET /interest_users/1/edit
  def edit
  end

  # POST /interest_users
  # POST /interest_users.json
  def create
    @interest_user = InterestUser.new(interest_user_params)

    respond_to do |format|
      if @interest_user.save
        format.html { redirect_to @interest_user, notice: 'Interest user was successfully created.' }
        format.json { render :show, status: :created, location: @interest_user }
      else
        format.html { render :new }
        format.json { render json: @interest_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_users/1
  # PATCH/PUT /interest_users/1.json
  def update
    respond_to do |format|
      if @interest_user.update(interest_user_params)
        format.html { redirect_to @interest_user, notice: 'Interest user was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_user }
      else
        format.html { render :edit }
        format.json { render json: @interest_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_users/1
  # DELETE /interest_users/1.json
  def destroy
    @interest_user.destroy
    respond_to do |format|
      format.html { redirect_to interest_users_url, notice: 'Interest user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_user
      @interest_user = InterestUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_user_params
      params.fetch(:interest_user, {})
    end
end
