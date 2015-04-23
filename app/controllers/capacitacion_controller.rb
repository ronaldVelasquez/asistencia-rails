# encoding: utf-8

class CapacitacionController < ApplicationController
  respond_to :json
  def login
  	clave = params[:password]
    usuario = Usuario.check_password(clave)
    if usuario.nil? || usuario.blank?
      render json: "No hay datos"
    else
      usuario_local = UsuarioLocal.find_by(id: usuario.id)
      json = Capacitacion.ubigeo(usuario_local) unless usuario_local.nil?
      render json: json
    end
  end
end
