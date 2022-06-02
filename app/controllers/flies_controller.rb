class FliesController < ApplicationController
  before_action :set_fly, only: %i[ show edit update destroy ]

  # GET /flies or /flies.json
  def index
    @flies = Fly.all
  end

  # GET /flies/1 or /flies/1.json
  def show
  end

  # GET /flies/new
  def new
    @fly = Fly.new
  end

  # GET /flies/1/edit
  def edit
  end

  # POST /flies or /flies.json
  def create
    @fly = Fly.new(fly_params)

    respond_to do |format|
      if @fly.save
        format.html { redirect_to fly_url(@fly), notice: "Fly was successfully created." }
        format.json { render :show, status: :created, location: @fly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flies/1 or /flies/1.json
  def update
    respond_to do |format|
      if @fly.update(fly_params)
        format.html { redirect_to fly_url(@fly), notice: "Fly was successfully updated." }
        format.json { render :show, status: :ok, location: @fly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flies/1 or /flies/1.json
  def destroy
    @fly.destroy

    respond_to do |format|
      format.html { redirect_to flies_url, notice: "Fly was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fly
      @fly = Fly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fly_params
      params.require(:fly).permit(:name, :photo, :description)
    end
end
