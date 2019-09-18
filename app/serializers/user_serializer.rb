class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :location, :website, :bio, :avatar
end
