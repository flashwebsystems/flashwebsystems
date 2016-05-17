json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :ID_Cliente, :ID_Parqueo, :Nombre, :Apellido, :Correo, :Contraseña
  json.url cliente_url(cliente, format: :json)
end
