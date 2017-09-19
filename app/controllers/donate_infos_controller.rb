class DonateInfosController < ApplicationController
  before_action :set_donate_info, only: [:show, :edit, :update, :destroy]

  # GET /donate_infos
  # GET /donate_infos.json
  def index
    @donate_infos = DonateInfo.all
  end

  # GET /donate_infos/1
  # GET /donate_infos/1.json
  def show
  end

  # GET /donate_infos/new
  def new
    @donate_info = DonateInfo.new
  end

  # GET /donate_infos/1/edit
  def edit
  end

  # POST /donate_infos
  # POST /donate_infos.json
  def create
    @donate_info = DonateInfo.new(donate_info_params)

    respond_to do |format|
      if @donate_info.save
        format.html { redirect_to @donate_info, notice: 'Donate info was successfully created.' }
        format.json { render :show, status: :created, location: @donate_info }
      else
        format.html { render :new }
        format.json { render json: @donate_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donate_infos/1
  # PATCH/PUT /donate_infos/1.json
  def update
    respond_to do |format|
      if @donate_info.update(donate_info_params)
        format.html { redirect_to @donate_info, notice: 'Donate info was successfully updated.' }
        format.json { render :show, status: :ok, location: @donate_info }
      else
        format.html { render :edit }
        format.json { render json: @donate_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donate_infos/1
  # DELETE /donate_infos/1.json
  def destroy
    @donate_info.destroy
    respond_to do |format|
      format.html { redirect_to donate_infos_url, notice: 'Donate info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donate_info
      @donate_info = DonateInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donate_info_params
      params.require(:donate_info).permit(:currency_id, :name, :address)
    end
end
