class InstrumentalsController < ApplicationController
  before_action :set_instrumental, only: [:show, :edit, :update, :destroy]

  # GET /instrumentals
  # GET /instrumentals.json
  def index
    @instrumentals = Instrumental.all
  end

  # GET /instrumentals/1
  # GET /instrumentals/1.json
  def show
  end

  # GET /instrumentals/new
  def new
    @instrumental = Instrumental.new
  end

  # GET /instrumentals/1/edit
  def edit
  end

  # POST /instrumentals
  # POST /instrumentals.json
  def create
    @instrumental = Instrumental.create(instrumental_params)

    respond_to do |format|
      if @instrumental.save
        format.html { redirect_to @instrumental, notice: 'Instrumental was successfully created.' }
        format.json { render :show, status: :created, location: @instrumental }
      else
        format.html { render :new }
        format.json { render json: @instrumental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instrumentals/1
  # PATCH/PUT /instrumentals/1.json
  def update
    respond_to do |format|
      if @instrumental.update(instrumental_params)
        format.html { redirect_to @instrumental, notice: 'Instrumental was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrumental }
      else
        format.html { render :edit }
        format.json { render json: @instrumental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrumentals/1
  # DELETE /instrumentals/1.json
  def destroy
    @instrumental.destroy
    respond_to do |format|
      format.html { redirect_to instrumentals_url, notice: 'Instrumental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrumental
      @instrumental = Instrumental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrumental_params
      params.require(:instrumental).permit(:name, images_attributes: [:id, :photo, :_destroy])
    end
end
