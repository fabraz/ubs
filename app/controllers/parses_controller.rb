class ParsesController < ApplicationController
  before_action :set_parse, only: [:show, :edit, :update, :destroy]

  # GET /parses
  # GET /parses.json
  def index
    @parses = Parse.all
  end

  # GET /parses/1
  # GET /parses/1.json
  def show
  end

  # GET /parses/new
  def new
    @parse = Parse.new
  end

  # GET /parses/1/edit
  def edit
  end

  # POST /parses
  # POST /parses.json
  def create
    @parse = Parse.new(parse_params)

    respond_to do |format|
      if @parse.save
        format.html { redirect_to @parse, notice: 'Parse was successfully created.' }
        format.json { render :show, status: :created, location: @parse }
      else
        format.html { render :new }
        format.json { render json: @parse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parses/1
  # PATCH/PUT /parses/1.json
  def update
    respond_to do |format|
      if @parse.update(parse_params)
        format.html { redirect_to @parse, notice: 'Parse was successfully updated.' }
        format.json { render :show, status: :ok, location: @parse }
      else
        format.html { render :edit }
        format.json { render json: @parse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parses/1
  # DELETE /parses/1.json
  def destroy
    @parse.destroy
    respond_to do |format|
      format.html { redirect_to parses_url, notice: 'Parse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    # accepted_formats = [".csv"]
    # file_name = params[:file].original_filename

    # if accepted_formats.include? File.extname(file_name)
    #   Parse.import(params[:file])
    #   redirect_to parses_url, notice: "Dados importados"
    # else
    #   flash[:notice] = "Extensão inválida, por favor selecione um arquivo csv"
    #   render :new
    # end
    
    Parse.import(params[:file])
    printf "chamou o import ubs"
    redirect_to parses_url, notice: "Dados importados"

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parse
      @parse = Parse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parse_params
      params[:parse]
    end
end
