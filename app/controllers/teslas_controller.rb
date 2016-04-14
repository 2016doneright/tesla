class TeslasController < ApplicationController
  before_action :set_tesla, only: [:show, :edit, :update, :destroy]

  # GET /teslas
  # GET /teslas.json
  def index
    @teslas = Tesla.all
    expires_in 5.days, :public => true
  end

  # GET /teslas/1
  # GET /teslas/1.json
  def show
  end

  # GET /teslas/new
  def new
    @tesla = Tesla.new
  end

  # GET /teslas/1/edit
  def edit
  end

  # POST /teslas
  # POST /teslas.json
  def create
    @tesla = Tesla.new(tesla_params)

    respond_to do |format|
      if @tesla.save
        format.html { redirect_to @tesla, notice: 'Tesla was successfully created.' }
        format.json { render :show, status: :created, location: @tesla }
      else
        format.html { render :new }
        format.json { render json: @tesla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teslas/1
  # PATCH/PUT /teslas/1.json
  def update
    respond_to do |format|
      if @tesla.update(tesla_params)
        format.html { redirect_to @tesla, notice: 'Tesla was successfully updated.' }
        format.json { render :show, status: :ok, location: @tesla }
      else
        format.html { render :edit }
        format.json { render json: @tesla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teslas/1
  # DELETE /teslas/1.json
  def destroy
    @tesla.destroy
    respond_to do |format|
      format.html { redirect_to teslas_url, notice: 'Tesla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesla
      @tesla = Tesla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tesla_params
      params[:tesla]
    end
end
