json.array!(@sexos) do |sexo|
  json.extract! sexo, :id, :type, :name, :login_id
  json.url sexo_url(sexo, format: :json)
end
