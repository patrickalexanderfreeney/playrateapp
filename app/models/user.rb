class User < ApplicationRecord
    has_many :reviews 
    has_many :songs, through: :reviews 
    validates :user_name, presence: true, uniqueness: true
    validates :password_digest, presence: true 
    has_secure_password
end
