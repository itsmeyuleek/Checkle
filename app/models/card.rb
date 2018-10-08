class Card < ApplicationRecord
mount_uploader :image, ImageUploader
belongs_to :topic
validates :topic_id, presence: true
end
