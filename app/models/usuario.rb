class Usuario < ActiveRecord::Base
  def self.check_password(password)
    usuario = Usuario.find_by(clave: password)
    usuario
  end
end
