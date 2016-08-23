class KontaController < ApplicationController
  before_action :set_kontum, only: [:show, :edit, :update, :destroy]

  # GET /konta
  # GET /konta.json
  def index
    @konta = Kontum.all
  end

  # GET /konta/1
  # GET /konta/1.json
  def show
  end

  # GET /konta/new
  def new
    @kontum = Kontum.new
  end

  # GET /konta/1/edit
  def edit
  end

  # POST /konta
  # POST /konta.json
  def create
    @kontum = Kontum.new(kontum_params)

    respond_to do |format|
      if @kontum.save
        format.html { redirect_to @kontum, notice: 'Kontum was successfully created.' }
        format.json { render :show, status: :created, location: @kontum }
      else
        format.html { render :new }
        format.json { render json: @kontum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /konta/1
  # PATCH/PUT /konta/1.json
  def update
    respond_to do |format|
      if @kontum.update(kontum_params)
        format.html { redirect_to @kontum, notice: 'Kontum was successfully updated.' }
        format.json { render :show, status: :ok, location: @kontum }
      else
        format.html { render :edit }
        format.json { render json: @kontum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /konta/1
  # DELETE /konta/1.json
  def destroy
    @kontum.destroy
    respond_to do |format|
      format.html { redirect_to konta_url, notice: 'Kontum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kontum
      @kontum = Kontum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kontum_params
      params.require(:kontum).permit(:Id, :Rachunek, :Konto_wn_plus, :Konto_ma_plus, :Konto_wn_minus, :Konto_ma_minus, :Manual)
    end
end
