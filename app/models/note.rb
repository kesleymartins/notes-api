class Note < ApplicationRecord
  validates :content, presence: true
  validates :background_color, presence: true
end
