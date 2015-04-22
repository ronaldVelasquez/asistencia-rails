json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usuario, :clave
  json.url usuario_url(usuario, format: :json)
end
