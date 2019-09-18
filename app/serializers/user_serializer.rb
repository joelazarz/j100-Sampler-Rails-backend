class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :location, :website, :bio, :avatar

  has_many :kits
  has_many :digs
  has_many :notes
end
