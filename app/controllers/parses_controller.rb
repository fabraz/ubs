class ParsesController < ApplicationController
  before_action :set_parse, only: [:show, :edit, :update, :destroy]

  # GET /parses
  def show
  end

  # GET /parses/new
  def new
    @parse = Parse.new
  end


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

  def import
    accepted_formats = [".csv"]
    file_name = params[:file].original_filename

    if accepted_formats.include? File.extname(file_name)
      Parse.import(params[:file])
      redirect_to parses_path, notice: "Dados importados"
    else
      flash[:notice] = "Extensão inválida, por favor selecione um arquivo csv"
      render :new
    end
  end
end
