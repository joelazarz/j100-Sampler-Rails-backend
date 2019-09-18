class DigSerializer < ActiveModel::Serializer
  attributes :id, :kit_id, :user_id, :name, :dig_pad_start, :dig_pad_end
end
