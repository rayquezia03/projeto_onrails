class Usuario < ApplicationRecord
    has_secure_password
    before_save :email_downcase

    validates :cpf, cpf: { message: 'Número de CPF válido' }, message: 'não pode ser deixado em branco'
    validates :name, presence: true, length: { maximum: 50 }
    validates :password, confirmation: true, length: { minimum: 7}
    validates :password_confirmation, presence: true
    validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}  
  
    private
    def email_downcase
      self.email.downcase!
    end
    
end