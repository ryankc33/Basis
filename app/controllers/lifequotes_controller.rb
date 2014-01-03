class LifequotesController < ApplicationController
  before_action :set_lifequote, only: [:show, :edit, :update, :destroy]

  # GET /lifequotes
  # GET /lifequotes.json
  def index
    @lifequotes = Lifequote.all
  end

  # GET /lifequotes/1
  # GET /lifequotes/1.json
  def show
  end

  # GET /lifequotes/new
  def new
    @lifequote = Lifequote.new
  end

  # GET /lifequotes/1/edit
  def edit
  end

  # POST /lifequotes
  # POST /lifequotes.json
  def create
    @lifequote = Lifequote.new(lifequote_params)

    respond_to do |format|
      if @lifequote.save
        format.html { redirect_to @lifequote, notice: 'Lifequote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lifequote }
      else
        format.html { render action: 'new' }
        format.json { render json: @lifequote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifequotes/1
  # PATCH/PUT /lifequotes/1.json
  def update
    respond_to do |format|
      if @lifequote.update(lifequote_params)
        format.html { redirect_to @lifequote, notice: 'Lifequote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lifequote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifequotes/1
  # DELETE /lifequotes/1.json
  def destroy
    @lifequote.destroy
    respond_to do |format|
      format.html { redirect_to lifequotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifequote
      @lifequote = Lifequote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifequote_params
      params.require(:lifequote).permit(:cover_amount, :cover, :cover_type, :cover_duration, :joint_cover, :monthly_payment, :applicant_title, :applicant_firstname, :applicant_lastname, :email, :applicant_date_of_birth, :applicant_phone, :smoking, :joint_applicant_title, :joint_applicant_firstname, :joint_applicant_lastname, :joint_applicant_date_of_birth, :joint_applicant_smoking)
    end
end
