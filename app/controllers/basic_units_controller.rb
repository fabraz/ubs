class BasicUnitsController < ApplicationController
  before_action :set_basic_unit, only: [:show, :edit, :update, :destroy]

  # GET /basic_units
  # GET /basic_units.json
  def index
    @basic_units = BasicUnit.search(params[:search])
  end

  # GET /basic_units/1
  # GET /basic_units/1.json
  def show
  end

  # GET /basic_units/new
  def new
    @basic_unit = BasicUnit.new
  end

  # GET /basic_units/1/edit
  def edit
  end

  # POST /basic_units
  # POST /basic_units.json
  def create
    @basic_unit = BasicUnit.new(basic_unit_params)

    respond_to do |format|
      if @basic_unit.save
        format.html { redirect_to @basic_unit, notice: 'Basic unit was successfully created.' }
        format.json { render :show, status: :created, location: @basic_unit }
      else
        format.html { render :new }
        format.json { render json: @basic_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basic_units/1
  # PATCH/PUT /basic_units/1.json
  def update
    respond_to do |format|
      if @basic_unit.update(basic_unit_params)
        format.html { redirect_to @basic_unit, notice: 'Basic unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @basic_unit }
      else
        format.html { render :edit }
        format.json { render json: @basic_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_units/1
  # DELETE /basic_units/1.json
  def destroy
    @basic_unit.destroy
    respond_to do |format|
      format.html { redirect_to basic_units_url, notice: 'Basic unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_unit
      @basic_unit = BasicUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_unit_params
      params[:basic_unit]
    end
end
