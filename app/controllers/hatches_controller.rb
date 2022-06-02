class HatchesController < ApplicationController
  before_action :set_hatch, only: %i[ show edit update destroy ]

  # GET /hatches or /hatches.json
  def index
    @hatches = Hatch.all
  end

  # GET /hatches/1 or /hatches/1.json
  def show
  end

  # GET /hatches/new
  def new
    @hatch = Hatch.new
  end

  # GET /hatches/1/edit
  def edit
  end

  # POST /hatches or /hatches.json
  def create
    @hatch = Hatch.new(hatch_params)

    respond_to do |format|
      if @hatch.save
        format.html { redirect_to hatch_url(@hatch), notice: "Hatch was successfully created." }
        format.json { render :show, status: :created, location: @hatch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatches/1 or /hatches/1.json
  def update
    respond_to do |format|
      if @hatch.update(hatch_params)
        format.html { redirect_to hatch_url(@hatch), notice: "Hatch was successfully updated." }
        format.json { render :show, status: :ok, location: @hatch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatches/1 or /hatches/1.json
  def destroy
    @hatch.destroy

    respond_to do |format|
      format.html { redirect_to hatches_url, notice: "Hatch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatch
      @hatch = Hatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hatch_params
      params.require(:hatch).permit(:bug_id, :fishery_id, :minimum_size, :maximum_size, :start_month, :start_day, :end_month, :end_day)
    end
end
