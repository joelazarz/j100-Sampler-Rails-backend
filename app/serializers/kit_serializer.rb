class KitSerializer < ActiveModel::Serializer
  attributes :id, :name, :detail, :sample, :image
  
  has_many :crates
  has_many :notes
  has_many :genres
  has_many :digs
end
