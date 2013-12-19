class LifeInsurancesController < ApplicationController
  before_action :set_life_insurance, only: [:show, :edit, :update, :destroy]

  # GET /life_insurances
  # GET /life_insurances.json
  def index
    @life_insurances = LifeInsurance.all
  end

  # GET /life_insurances/1
  # GET /life_insurances/1.json
  def show
  end

  # GET /life_insurances/new
  def new
    @life_insurance = LifeInsurance.new
  end

  # GET /life_insurances/1/edit
  def edit
  end

  # POST /life_insurances
  # POST /life_insurances.json
  def create
    @life_insurance = LifeInsurance.new(life_insurance_params)

    respond_to do |format|
      if @life_insurance.save
        format.html { redirect_to @life_insurance, notice: 'Life insurance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @life_insurance }
      else
        format.html { render action: 'new' }
        format.json { render json: @life_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_insurances/1
  # PATCH/PUT /life_insurances/1.json
  def update
    respond_to do |format|
      if @life_insurance.update(life_insurance_params)
        format.html { redirect_to @life_insurance, notice: 'Life insurance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @life_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_insurances/1
  # DELETE /life_insurances/1.json
  def destroy
    @life_insurance.destroy
    respond_to do |format|
      format.html { redirect_to life_insurances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_insurance
      @life_insurance = LifeInsurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_insurance_params
      params.require(:life_insurance).permit(:reviewable, :monthly_premium_base)
    end
end
