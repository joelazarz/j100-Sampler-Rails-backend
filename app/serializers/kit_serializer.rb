class KitSerializer < ActiveModel::Serializer
  attributes :id, :name, :detail, :sample_path, :image
  
  has_many :notes
  has_many :genres
  has_many :digs
end
