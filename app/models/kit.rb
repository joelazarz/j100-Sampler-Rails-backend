class Kit < ApplicationRecord
    has_many :digs
    has_many :notes
    has_many :genres
end
