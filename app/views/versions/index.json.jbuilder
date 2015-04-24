json.array!(@versions) do |version|
  json.extract! version, :id, :vercod, :v_padron, :v_sistem_integer, :f_registro, :id_even, :des_ini, :des_fin, :observa
  json.url version_url(version, format: :json)
end
