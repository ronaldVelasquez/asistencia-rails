# encoding: utf-8

class SedeOperativasController < ApplicationController
  before_action :set_sede_operativa, only: [:show, :edit, :update, :destroy]

  # GET /sede_operativas
  # GET /sede_operativas.json
  def index
    @sede_operativas = SedeOperativa.all
  end

  # GET /sede_operativas/1
  # GET /sede_operativas/1.json
  def show
  end

  # GET /sede_operativas/new
  def new
    @sede_operativa = SedeOperativa.new
  end

  # GET /sede_operativas/1/edit
  def edit
  end

  # POST /sede_operativas
  # POST /sede_operativas.json
  def create
    @sede_operativa = SedeOperativa.new(sede_operativa_params)

    respond_to do |format|
      if @sede_operativa.save
        format.html { redirect_to @sede_operativa, notice: 'Sede operativa was successfully created.' }
        format.json { render :show, status: :created, location: @sede_operativa }
      else
        format.html { render :new }
        format.json { render json: @sede_operativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sede_operativas/1
  # PATCH/PUT /sede_operativas/1.json
  def update
    respond_to do |format|
      if @sede_operativa.update(sede_operativa_params)
        format.html { redirect_to @sede_operativa, notice: 'Sede operativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @sede_operativa }
      else
        format.html { render :edit }
        format.json { render json: @sede_operativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sede_operativas/1
  # DELETE /sede_operativas/1.json
  def destroy
    @sede_operativa.destroy
    respond_to do |format|
      format.html { redirect_to sede_operativas_url, notice: 'Sede operativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sede_operativa
      @sede_operativa = SedeOperativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sede_operativa_params
      params.require(:sede_operativa).permit(:cod_sede_operativa, :sede_operativa)
    end
end
