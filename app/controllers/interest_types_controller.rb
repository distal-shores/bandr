class InterestTypesController < ApplicationController
  before_action :set_interest_type, only: [:show, :edit, :update, :destroy]

  # GET /interest_types
  # GET /interest_types.json
  def index
    @interest_types = InterestType.all
  end

  # GET /interest_types/1
  # GET /interest_types/1.json
  def show
  end

  # GET /interest_types/new
  def new
    @interest_type = InterestType.new
  end

  # GET /interest_types/1/edit
  def edit
  end

  # POST /interest_types
  # POST /interest_types.json
  def create
    @interest_type = InterestType.new(interest_type_params)

    respond_to do |format|
      if @interest_type.save
        format.html { redirect_to @interest_type, notice: 'Interest type was successfully created.' }
        format.json { render :show, status: :created, location: @interest_type }
      else
        format.html { render :new }
        format.json { render json: @interest_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_types/1
  # PATCH/PUT /interest_types/1.json
  def update
    respond_to do |format|
      if @interest_type.update(interest_type_params)
        format.html { redirect_to @interest_type, notice: 'Interest type was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_type }
      else
        format.html { render :edit }
        format.json { render json: @interest_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_types/1
  # DELETE /interest_types/1.json
  def destroy
    @interest_type.destroy
    respond_to do |format|
      format.html { redirect_to interest_types_url, notice: 'Interest type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_type
      @interest_type = InterestType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_type_params
      params.fetch(:interest_type, {})
    end
end
