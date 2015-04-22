json.array!(@sede_operativas) do |sede_operativa|
  json.extract! sede_operativa, :id, :cod_sede_operativa, :sede_operativa
  json.url sede_operativa_url(sede_operativa, format: :json)
end
