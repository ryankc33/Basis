class CarInsurancesController < ApplicationController
  before_action :set_car_insurance, only: [:show, :edit, :update, :destroy]

  # GET /car_insurances
  # GET /car_insurances.json
  def index
    @car_insurances = CarInsurance.all
  end

  # GET /car_insurances/1
  # GET /car_insurances/1.json
  def show
  end

  # GET /car_insurances/new
  def new
    @car_insurance = CarInsurance.new
  end

  # GET /car_insurances/1/edit
  def edit
  end

  # POST /car_insurances
  # POST /car_insurances.json
  def create
    @car_insurance = CarInsurance.new(car_insurance_params)

    respond_to do |format|
      if @car_insurance.save
        format.html { redirect_to @car_insurance, notice: 'Car insurance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @car_insurance }
      else
        format.html { render action: 'new' }
        format.json { render json: @car_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_insurances/1
  # PATCH/PUT /car_insurances/1.json
  def update
    respond_to do |format|
      if @car_insurance.update(car_insurance_params)
        format.html { redirect_to @car_insurance, notice: 'Car insurance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_insurances/1
  # DELETE /car_insurances/1.json
  def destroy
    @car_insurance.destroy
    respond_to do |format|
      format.html { redirect_to car_insurances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_insurance
      @car_insurance = CarInsurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_insurance_params
      params.require(:car_insurance).permit(:name, :premium_base, :description, :benefits)
    end
end
