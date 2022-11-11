class BreedersController < ApplicationController
  before_action :set_breeder, only: %i[ show edit update destroy ]

  # GET /breeders or /breeders.json
  def index
    @breeders = Breeder.all
  end

  # GET /breeders/1 or /breeders/1.json
  def show
  end

  # GET /breeders/new
  def new
    @breeder = Breeder.new
  end

  # GET /breeders/1/edit
  def edit
  end

  # POST /breeders or /breeders.json
  def create
    @breeder = Breeder.new(breeder_params)

    respond_to do |format|
      if @breeder.save
        format.html { redirect_to breeder_url(@breeder), notice: "Breeder was successfully created." }
        format.json { render :show, status: :created, location: @breeder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breeders/1 or /breeders/1.json
  def update
    respond_to do |format|
      if @breeder.update(breeder_params)
        format.html { redirect_to breeder_url(@breeder), notice: "Breeder was successfully updated." }
        format.json { render :show, status: :ok, location: @breeder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breeders/1 or /breeders/1.json
  def destroy
    @breeder.destroy

    respond_to do |format|
      format.html { redirect_to breeders_url, notice: "Breeder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breeder
      @breeder = Breeder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def breeder_params
      params.require(:breeder).permit(:name, :description, :history)
    end
end
