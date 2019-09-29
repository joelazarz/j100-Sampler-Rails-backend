class Kit < ApplicationRecord
    has_many :crates
    has_many :digs
    has_many :notes
    has_many :genres
end
