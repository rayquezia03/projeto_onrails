class Usuario < ApplicationRecord
    has_secure_password
    before_save :email_downcase

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :cpf, cpf: { message: 'Número de CPF válido' }, message: 'não pode ser deixado em branco'
    validates :name, presence: true, length: { maximum: 50 }
    validates :password, length: { minimum: 7}
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: true }
  
  private
    def email_downcase
      self.email.downcase!
    end
    
end