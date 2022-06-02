class FisheriesController < ApplicationController
  before_action :set_fishery, only: %i[ show edit update destroy ]

  # GET /fisheries or /fisheries.json
  def index
    @fisheries = Fishery.all
  end

  # GET /fisheries/1 or /fisheries/1.json
  def show
  end

  # GET /fisheries/new
  def new
    @fishery = Fishery.new
  end

  # GET /fisheries/1/edit
  def edit
  end

  # POST /fisheries or /fisheries.json
  def create
    @fishery = Fishery.new(fishery_params)

    respond_to do |format|
      if @fishery.save
        format.html { redirect_to fishery_url(@fishery), notice: "Fishery was successfully created." }
        format.json { render :show, status: :created, location: @fishery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fishery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fisheries/1 or /fisheries/1.json
  def update
    respond_to do |format|
      if @fishery.update(fishery_params)
        format.html { redirect_to fishery_url(@fishery), notice: "Fishery was successfully updated." }
        format.json { render :show, status: :ok, location: @fishery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fishery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fisheries/1 or /fisheries/1.json
  def destroy
    @fishery.destroy

    respond_to do |format|
      format.html { redirect_to fisheries_url, notice: "Fishery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fishery
      @fishery = Fishery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fishery_params
      params.require(:fishery).permit(:name, :photo, :location, :description)
    end
end
