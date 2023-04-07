class Note < ApplicationRecord
  validates :content, presence: true
  validates :background_color, presence: true

  scope :order_by_latest, -> { order(created_at: :desc) }
end
