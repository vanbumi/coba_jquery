class XservicesController < ApplicationController
  before_action :set_xservice, only: [:show, :edit, :update, :destroy]

  # GET /xservices
  # GET /xservices.json
  def index
    @xservices = Xservice.all
  end

  # GET /xservices/1
  # GET /xservices/1.json
  def show
  end

  # GET /xservices/new
  def new
    @xservice = Xservice.new
  end

  # GET /xservices/1/edit
  def edit
  end

  # POST /xservices
  # POST /xservices.json
  def create
    @xservice = Xservice.new(xservice_params)

    respond_to do |format|
      if @xservice.save
        format.html { redirect_to @xservice, notice: 'Xservice was successfully created.' }
        format.json { render :show, status: :created, location: @xservice }
      else
        format.html { render :new }
        format.json { render json: @xservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xservices/1
  # PATCH/PUT /xservices/1.json
  def update
    respond_to do |format|
      if @xservice.update(xservice_params)
        format.html { redirect_to @xservice, notice: 'Xservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @xservice }
      else
        format.html { render :edit }
        format.json { render json: @xservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xservices/1
  # DELETE /xservices/1.json
  def destroy
    @xservice.destroy
    respond_to do |format|
      format.html { redirect_to xservices_url, notice: 'Xservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xservice
      @xservice = Xservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xservice_params
      params.require(:xservice).permit(:name)
    end
end
