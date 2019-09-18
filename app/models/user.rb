class User < ApplicationRecord
    has_one_attached :image
    has_many :crates
    has_many :digs
    has_many :notes
end
