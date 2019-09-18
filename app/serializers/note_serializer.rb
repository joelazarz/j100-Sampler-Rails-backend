class NoteSerializer < ActiveModel::Serializer
  attributes :id, :kit_id, :user_id, :note, :note_pad_start, :note_pad_end
end
