class Kit < ApplicationRecord
    has_one_attached :sample

    def sample_path
        ActiveStorage::Blob.service.path_for(sample.key)
    end

    has_one_attached :image

    # def image_path
    #     ActiveStorage::Blob.service.path_for(image.key)
    # end

    has_many :digs
    has_many :notes
    has_many :genres
end
