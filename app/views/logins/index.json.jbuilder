json.array!(@logins) do |login|
  json.extract! login, :id, :name, :lastname, :email, :password, :sexo
  json.url login_url(login, format: :json)
end
