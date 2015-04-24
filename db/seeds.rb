# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Delete all tables
UsuarioLocal.delete_all
Usuario.delete_all
SedeOperativa.delete_all
Local.delete_all
Rol.delete_all
Version.delete_all

# Create new data
usuario = Usuario.create(usuario: "RONALD", clave: "RONALD", nombres_apellidos: "RONALD VELASQUEZ", estado: "1", id_rol: 1)
UsuarioLocal.create(id: usuario.id, cod_sede_operativa: 16, cod_local_sede: 1)
SedeOperativa.create(cod_sede_operativa: 16, sede_operativa: "ICA")
Local.create(cod_sede_operativa: 16, cod_local_sede: 1, nombreLocal: "UNIVERSIDAD NACIONAL SAN LUIS GONZAGA", direccion: "AV. LOS MAESTROS S/N", refencia: "AL FRENTE DE URB. LA PALMA", estado: "1", naula: 30)
Rol.create(id: 1, nombre_rol: "ADMIN")
date = Date.today
Version.create(vercod: 1, v_padron: 1, v_sistem: 1, f_registro: Date.yesterday, id_even: 1, des_ini: Time.new(date.year, date.month, date.day, 7, 30, 00), des_fin: Time.new(date.year, date.month, date.day, 11, 30, 00) )
Version.create(vercod: 2, v_padron: 2, v_sistem: 1, f_registro: Date.yesterday, id_even: 1, des_ini: Time.new(date.year, date.month, date.day, 11, 31, 00), des_fin: Time.new(date.year, date.month, date.day, 15, 00, 00) )