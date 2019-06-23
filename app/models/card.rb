class Card < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :attempts
  belongs_to :topic
  belongs_to :user, optional: true

  validates :topic_id, presence: true

  def next
    Card.where("id > ?", id).order(id: :asc).limit(1).first
  end

  def prev
    Card.where("id < ?", id).order(id: :desc).limit(1).first
  end

end
