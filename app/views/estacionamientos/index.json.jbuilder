json.array!(@estacionamientos) do |estacionamiento|
  json.extract! estacionamiento, :id, :ID_Parqueo, :Nivel, :Distrito
  json.url estacionamiento_url(estacionamiento, format: :json)
end
