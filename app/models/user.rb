class User < ActiveRecord::Base
    belongs_to :login
    
    geocoded_by :address
    after_validation :geocode
    validates :price_day, presence: {:message => "Usted debe ingresar Precio Diario"}, length: { maximum: 12 }
    validates :price_month, presence: {:message => "Usted debe ingresar Precio Mensual"}, length: { maximum: 12 }
    validates :telefono, presence: true, length: { maximum: 9 }
    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    
end
