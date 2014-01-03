class CarInsuranceQuotesController < ApplicationController
  before_action :set_car_insurance_quote, only: [:show, :edit, :update, :destroy]

  # GET /car_insurance_quotes
  # GET /car_insurance_quotes.json
  def index
    @car_insurance_quotes = CarInsuranceQuote.all
  end

  # GET /car_insurance_quotes/1
  # GET /car_insurance_quotes/1.json
  def show
  end

  # GET /car_insurance_quotes/new
  def new
    @car_insurance_quote = CarInsuranceQuote.new
  end

  # GET /car_insurance_quotes/1/edit
  def edit
  end

  # POST /car_insurance_quotes
  # POST /car_insurance_quotes.json
  def create
    @car_insurance_quote = CarInsuranceQuote.new(car_insurance_quote_params)

    respond_to do |format|
      if @car_insurance_quote.save
        format.html { redirect_to @car_insurance_quote, notice: 'Car insurance quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @car_insurance_quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @car_insurance_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_insurance_quotes/1
  # PATCH/PUT /car_insurance_quotes/1.json
  def update
    respond_to do |format|
      if @car_insurance_quote.update(car_insurance_quote_params)
        format.html { redirect_to @car_insurance_quote, notice: 'Car insurance quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car_insurance_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_insurance_quotes/1
  # DELETE /car_insurance_quotes/1.json
  def destroy
    @car_insurance_quote.destroy
    respond_to do |format|
      format.html { redirect_to car_insurance_quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_insurance_quote
      @car_insurance_quote = CarInsuranceQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_insurance_quote_params
      params.require(:car_insurance_quote).permit(:car_registration_number, :car_modified, :car_purchase_date, :owner_and_keeper, :car_usage, :annual_distance, :car_storage, :total_cars_owned, :car_model, :applicant_first_name, :applicant_surname, :applicant_gender, :applicant_date_of_birth, :applicant_marital_status, :applicant_children_under16, :applicant_occupation, :applicant_employer_type, :applicant_address, :applicant_postcode, :applicant_phone_number, :applicant_previous_claim, :applicant_motoring_offences, :applicant_convictions)
    end
end
