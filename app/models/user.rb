class User < ApplicationRecord
    has_secure_password
    has_many :audiocards

    validates :email, presence: true
end
