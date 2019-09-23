class KitSerializer < ActiveModel::Serializer
  
  include Rails.application.routes.url_helpers

  attributes :id, :name, :detail, :sample

  def sample
    rails_blob_url(object.sample) if object.sample.attached?
  end
  
  # attributes :id, :name, :detail, :sample, :image

  has_many :notes
  has_many :genres
  has_many :digs
end
