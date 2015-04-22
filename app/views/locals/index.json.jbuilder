json.array!(@locals) do |local|
  json.extract! local, :id, :cod_sede_operativa, :cod_local_sede, :nombreLocal, :direccion, :refencia, :naula, :estado
  json.url local_url(local, format: :json)
end
