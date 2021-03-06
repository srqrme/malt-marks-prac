class User < ApplicationRecord

    has_many :marks
    has_many :whiskeys, through: :marks

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence:true, 
                         length: { minimum: 6 }
    
    has_secure_password
end
