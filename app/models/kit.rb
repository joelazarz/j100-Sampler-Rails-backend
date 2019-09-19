class Kit < ApplicationRecord
    has_one_attached :sample
    has_one_attached :image
    has_many :digs
    has_many :notes
    has_many :genres
end
