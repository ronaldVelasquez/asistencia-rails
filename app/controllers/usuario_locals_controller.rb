# encoding: utf-8

class UsuarioLocalsController < ApplicationController
  before_action :set_usuario_local, only: [:show, :edit, :update, :destroy]

  # GET /usuario_locals
  # GET /usuario_locals.json
  def index
    @usuario_locals = UsuarioLocal.all
  end

  # GET /usuario_locals/1
  # GET /usuario_locals/1.json
  def show
  end

  # GET /usuario_locals/new
  def new
    @usuario_local = UsuarioLocal.new
  end

  # GET /usuario_locals/1/edit
  def edit
  end

  # POST /usuario_locals
  # POST /usuario_locals.json
  def create
    @usuario_local = UsuarioLocal.new(usuario_local_params)

    respond_to do |format|
      if @usuario_local.save
        format.html { redirect_to @usuario_local, notice: 'Usuario local was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_local }
      else
        format.html { render :new }
        format.json { render json: @usuario_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_locals/1
  # PATCH/PUT /usuario_locals/1.json
  def update
    respond_to do |format|
      if @usuario_local.update(usuario_local_params)
        format.html { redirect_to @usuario_local, notice: 'Usuario local was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_local }
      else
        format.html { render :edit }
        format.json { render json: @usuario_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_locals/1
  # DELETE /usuario_locals/1.json
  def destroy
    @usuario_local.destroy
    respond_to do |format|
      format.html { redirect_to usuario_locals_url, notice: 'Usuario local was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_local
      @usuario_local = UsuarioLocal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_local_params
      params[:usuario_local]
    end
end
