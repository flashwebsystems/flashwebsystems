json.array!(@users) do |user|
  json.extract! user, :id, :latitude, :longitude, :address, :description, :title, :price_day, :price_month, :No_Disponibilidad, :No_Horario, :No_TamannoAuto, :No_Nivel, :telefono, :login_id
  json.url user_url(user, format: :json)
end
