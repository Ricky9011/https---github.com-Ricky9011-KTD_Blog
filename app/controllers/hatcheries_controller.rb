class HatcheriesController < ApplicationController
  before_action :set_hatchery, only: %i[ show edit update destroy ]

  # GET /hatcheries or /hatcheries.json
  def index
    @hatcheries = Hatchery.all
  end

  # GET /hatcheries/1 or /hatcheries/1.json
  def show
  end

  # GET /hatcheries/new
  def new
    @hatchery = Hatchery.new
  end

  # GET /hatcheries/1/edit
  def edit
  end

  # POST /hatcheries or /hatcheries.json
  def create
    @hatchery = Hatchery.new(hatchery_params)

    respond_to do |format|
      if @hatchery.save
        format.html { redirect_to hatchery_url(@hatchery), notice: "Hatchery was successfully created." }
        format.json { render :show, status: :created, location: @hatchery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hatchery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatcheries/1 or /hatcheries/1.json
  def update
    respond_to do |format|
      if @hatchery.update(hatchery_params)
        format.html { redirect_to hatchery_url(@hatchery), notice: "Hatchery was successfully updated." }
        format.json { render :show, status: :ok, location: @hatchery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hatchery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatcheries/1 or /hatcheries/1.json
  def destroy
    @hatchery.destroy

    respond_to do |format|
      format.html { redirect_to hatcheries_url, notice: "Hatchery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatchery
      @hatchery = Hatchery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hatchery_params
      params.require(:hatchery).permit(:name, :description, :history)
    end
end
