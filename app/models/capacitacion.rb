class Capacitacion < ActiveRecord::Base

  def self.ubigeo(usuario_local)
    usuario = Usuario.find_by(id: usuario_local.id).usuario
    sede = SedeOperativa.find_by(cod_sede_operativa: usuario_local.cod_sede_operativa).sede_operativa
    local = Local.find_by(cod_sede_operativa: usuario_local.cod_sede_operativa, cod_local_sede: usuario_local.cod_local_sede)
    local_nombre = local.nombreLocal
    local_direccion = local.direccion
    local_estado = local.estado
    local_nro_aula = local.naula
    json = { usuario: usuario, sede_operativa: sede, local: local_nombre, direccion: local_direccion, aulas: local_nro_aula, estado: local_estado }
  end
end
