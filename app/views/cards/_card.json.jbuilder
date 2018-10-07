json.extract! card, :id, :question, :answer, :topic_id, :image, :memorization_level, :created_at, :updated_at
json.url card_url(card, format: :json)
