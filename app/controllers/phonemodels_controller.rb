class PhonemodelsController < ApplicationController
  before_action :set_phonemodel, only: [:show, :edit, :update, :destroy]

  # GET /phonemodels
  # GET /phonemodels.json
  def index
    @phonemodels = Phonemodel.all
  end

  # GET /phonemodels/1
  # GET /phonemodels/1.json
  def show
  end

  # GET /phonemodels/new
  def new
    @phonemodel = Phonemodel.new
  end

  # GET /phonemodels/1/edit
  def edit
  end

  # POST /phonemodels
  # POST /phonemodels.json
  def create
    @phonemodel = Phonemodel.new(phonemodel_params)

    respond_to do |format|
      if @phonemodel.save
        format.html { redirect_to @phonemodel, notice: 'Phonemodel was successfully created.' }
        format.json { render :show, status: :created, location: @phonemodel }
      else
        format.html { render :new }
        format.json { render json: @phonemodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonemodels/1
  # PATCH/PUT /phonemodels/1.json
  def update
    respond_to do |format|
      if @phonemodel.update(phonemodel_params)
        format.html { redirect_to @phonemodel, notice: 'Phonemodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @phonemodel }
      else
        format.html { render :edit }
        format.json { render json: @phonemodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonemodels/1
  # DELETE /phonemodels/1.json
  def destroy
    @phonemodel.destroy
    respond_to do |format|
      format.html { redirect_to phonemodels_url, notice: 'Phonemodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phonemodel
      @phonemodel = Phonemodel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phonemodel_params
      params.fetch(:phonemodel, {})
    end
end
