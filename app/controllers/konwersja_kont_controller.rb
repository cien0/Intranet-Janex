class KonwersjaKontController < ApplicationController
  before_action :set_konwersja_kont, only: [:show, :edit, :update, :destroy]

  # GET /konwersja_kont
  # GET /konwersja_kont.json
  def index
@konwersja_kont = KonwersjaKont.paginate(:page => params[:page], :per_page => 10 ).search(params)
#index.html
#index.js
end

  # GET /konwersja_kont/1
  # GET /konwersja_kont/1.json
  def show
  end

  # GET /konwersja_kont/new
  def new
    @konwersja_kont = KonwersjaKont.new
  end

  # GET /konwersja_kont/1/edit
  def edit
  end

  # POST /konwersja_kont
  # POST /konwersja_kont.json
  def create
    @konwersja_kont = KonwersjaKont.new(konwersja_kont_params)

    respond_to do |format|
      if @konwersja_kont.save
        format.html { redirect_to @konwersja_kont, notice: 'Konwersja kont was successfully created.' }
        format.json { render :show, status: :created, location: @konwersja_kont }
      else
        format.html { render :new }
        format.json { render json: @konwersja_kont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /konwersja_kont/1
  # PATCH/PUT /konwersja_kont/1.json
  def update
    respond_to do |format|
      if @konwersja_kont.update(konwersja_kont_params)
        format.html { redirect_to @konwersja_kont, notice: 'Konwersja kont was successfully updated.' }
        format.json { render :show, status: :ok, location: @konwersja_kont }
      else
        format.html { render :edit }
        format.json { render json: @konwersja_kont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /konwersja_kont/1
  # DELETE /konwersja_kont/1.json
  def destroy
    @konwersja_kont.destroy
    respond_to do |format|
      format.html { redirect_to konwersja_kont_url, notice: 'Konwersja kont was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_konwersja_kont
      @konwersja_kont = KonwersjaKont.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def konwersja_kont_params
      params.require(:konwersja_kont).permit(:Id, :Rachunek, :Konto_wn_plus, :Konto_ma_plus, :Konto_wn_minus, :Konto_ma_minus, :Manual)
    end

end
