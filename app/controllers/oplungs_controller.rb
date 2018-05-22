class OplungsController < ApplicationController
  before_action :set_oplung, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :categories]

  # GET /oplung
  # GET /oplungs.json
  def index
    @oplungs = Oplung.all.order("created_at desc")
  end
  def categories
    @oplungs = Oplung.all.order("created_at desc")
    
  end
  # GET /oplungs/1
  # GET /oplungs/1.json
  def show
  end

  # GET /oplungs/new
  def new
    @oplung = Oplung.new
  end

  # GET /oplungs/1/edit
  def edit
  end

  # POST /oplungs
  # POST /oplungs.json
  def create
    @oplung = current_user.oplungs.build(oplung_params)

    respond_to do |format|
      if @oplung.save
        format.html { redirect_to @oplung, notice: 'oplung was successfully created.' }
        format.json { render :show, status: :created, location: @oplung }
      else
        format.html { render :new }
        format.json { render json: @oplung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oplungs/1
  # PATCH/PUT /oplungs/1.json
  def update
    respond_to do |format|
      if @oplung.update(oplung_params)
        format.html { redirect_to @oplung, notice: 'Case was successfully updated.' }
        format.json { render :show, status: :ok, location: @oplung }
      else
        format.html { render :edit }
        format.json { render json: @oplung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oplungs/1
  # DELETE /oplungs/1.json
  def destroy
    @oplung.destroy
    respond_to do |format|
      format.html { redirect_to oplungs_url, notice: 'Case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oplung
      @oplung = Oplung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oplung_params
      params.require(:oplung).permit(:price, :title, :description, :image, :sale, :new, :quantity, :brand_id, :phonemodel_id)
    end

end
