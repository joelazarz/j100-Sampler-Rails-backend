class CrateSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :kit_id
  belongs_to :user
end
