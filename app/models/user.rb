class User < ApplicationRecord
    has_many :crates
    has_many :digs
    has_many :notes

    validates :username, presence: true, uniqueness: true
    has_secure_password 
end
