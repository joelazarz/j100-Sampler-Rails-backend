class User < ApplicationRecord
    has_many :crates
    has_many :digs
    has_many :notes
end
