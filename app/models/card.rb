class Card < ApplicationRecord
mount_uploader :image, ImageUploader
validates :topic_id, presence: true
end
