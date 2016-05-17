class Estacionamiento < ActiveRecord::Base
    has_many :clientes
end
