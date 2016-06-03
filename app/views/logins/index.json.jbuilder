json.array!(@logins) do |login|
  json.extract! login, :id, :name, :lastname, :correo, :password, :sexo
  json.url login_url(login, format: :json)
end
