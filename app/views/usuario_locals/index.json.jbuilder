json.array!(@usuario_locals) do |usuario_local|
  json.extract! usuario_local, :id
  json.url usuario_local_url(usuario_local, format: :json)
end
