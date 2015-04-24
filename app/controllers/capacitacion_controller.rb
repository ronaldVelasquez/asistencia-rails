# encoding: utf-8

class CapacitacionController < ApplicationController
  respond_to :json
  skip_before_filter :verify_authenticity_token  

  def login
  	clave = params[:password]
    usuario = Usuario.check_password(clave)
    json = {}
    unless (usuario.nil? || usuario.blank?)
      usuario_local = UsuarioLocal.find_by(id: usuario.id)
      json = Capacitacion.ubigeo(usuario_local) unless usuario_local.nil?
    end
    render json: json 
  end

  def versiones
    render json: Version.all
  end

  def version_actual
    version = Version.where("des_fin >= ?", Time.now)
    if version.blank?
      version = Version.last
    end
    render json: version
  end

end
