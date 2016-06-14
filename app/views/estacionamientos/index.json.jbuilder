json.array!(@estacionamientos) do |estacionamiento|
  json.extract! estacionamiento, :id, :fe_inicio, :fe_final, :monto_pagar, :mensaje, :user_id
  json.url estacionamiento_url(estacionamiento, format: :json)
end
