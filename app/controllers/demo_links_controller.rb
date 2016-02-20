class DemoLinksController < ApplicationController
  before_action :set_demo_link, only: [:show, :edit, :update, :destroy]

  # GET /demo_links
  # GET /demo_links.json
  def index
    @demo_links = DemoLink.all
  end

  # GET /demo_links/1
  # GET /demo_links/1.json
  def show
  end

  # GET /demo_links/new
  def new
    @demo_link = DemoLink.new
  end

  # GET /demo_links/1/edit
  def edit
  end

  # POST /demo_links
  # POST /demo_links.json
  def create
    @demo_link = DemoLink.new(demo_link_params)

    respond_to do |format|
      if @demo_link.save
        format.html { redirect_to @demo_link, notice: 'Demo link was successfully created.' }
        format.json { render :show, status: :created, location: @demo_link }
      else
        format.html { render :new }
        format.json { render json: @demo_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demo_links/1
  # PATCH/PUT /demo_links/1.json
  def update
    respond_to do |format|
      if @demo_link.update(demo_link_params)
        format.html { redirect_to @demo_link, notice: 'Demo link was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo_link }
      else
        format.html { render :edit }
        format.json { render json: @demo_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_links/1
  # DELETE /demo_links/1.json
  def destroy
    @demo_link.destroy
    respond_to do |format|
      format.html { redirect_to demo_links_url, notice: 'Demo link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo_link
      @demo_link = DemoLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_link_params
      params.require(:demo_link).permit(:url, :description)
    end
end
