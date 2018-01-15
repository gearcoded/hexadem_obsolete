class HexavertsController < ApplicationController
  before_action :set_hexavert, only: [:show, :edit, :update, :destroy]

  # GET /hexaverts
  # GET /hexaverts.json
  def index
    @hexaverts = Hexavert.all
  end

  # GET /hexaverts/1
  # GET /hexaverts/1.json
  def show
  end

  # GET /hexaverts/new
  def new
    @hexavert = Hexavert.new
  end

  # GET /hexaverts/1/edit
  def edit
  end

  # POST /hexaverts
  # POST /hexaverts.json
  def create
    @hexavert = Hexavert.new(hexavert_params)

    respond_to do |format|
      if @hexavert.save
        format.html { redirect_to @hexavert, notice: 'Hexavert was successfully created.' }
        format.json { render :show, status: :created, location: @hexavert }
      else
        format.html { render :new }
        format.json { render json: @hexavert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hexaverts/1
  # PATCH/PUT /hexaverts/1.json
  def update
    respond_to do |format|
      if @hexavert.update(hexavert_params)
        format.html { redirect_to @hexavert, notice: 'Hexavert was successfully updated.' }
        format.json { render :show, status: :ok, location: @hexavert }
      else
        format.html { render :edit }
        format.json { render json: @hexavert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hexaverts/1
  # DELETE /hexaverts/1.json
  def destroy
    @hexavert.destroy
    respond_to do |format|
      format.html { redirect_to hexaverts_url, notice: 'Hexavert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hexavert
      @hexavert = Hexavert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hexavert_params
      params.require(:hexavert).permit(:data, :encoded)
    end
end
