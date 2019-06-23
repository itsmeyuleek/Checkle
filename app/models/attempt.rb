class Attempt < ApplicationRecord
  belongs_to :user
  belongs_to :card
  belongs_to :check, optional: true
end
