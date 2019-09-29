class Crate < ApplicationRecord
  has_many :kits
  belongs_to :user
  belongs_to :kit
end
