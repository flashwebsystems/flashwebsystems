include Loggable 

class Cliente < ActiveRecord::Base
    belongs_to :estacionamiento
    validates :estacionamiento, presence: true
    validates :Nombre, presence: true
    validates :Apellido, presence: true
    validates :Correo, presence: true
    validates :Contraseña, presence: true
end
