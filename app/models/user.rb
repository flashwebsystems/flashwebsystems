class User < ActiveRecord::Base
    belongs_to :login
    
    geocoded_by :address
    after_validation :geocode
    validates :price_day, presence: {:message => "Usted debe ingresar Precio Diario"}, length: { maximum: 12 }
    validates :telefono, presence: true, length: { maximum: 9 }
    
end
