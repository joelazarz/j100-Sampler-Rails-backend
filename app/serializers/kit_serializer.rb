class KitSerializer < ActiveModel::Serializer
  attributes :id, :name, :detail, :sample_url, :image_url
  
  has_many :notes
  has_many :genres
  has_many :digs
end
