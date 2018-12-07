class Card < ApplicationRecord
mount_uploader :image, ImageUploader

belongs_to :topic
belongs_to :user, optional: true

validates :topic_id, presence: true
end
