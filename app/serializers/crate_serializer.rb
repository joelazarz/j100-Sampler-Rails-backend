class CrateSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :kit_id, :name
  belongs_to :user
end
